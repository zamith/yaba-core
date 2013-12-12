require "yaba/core/version"

module Yaba
  module Core
    require "repository"

    class Config
      def self.configure
        @repository_config = RepositoryConfig.new
        yield self
        post_config
      end

      def self.repository=(repo_type)
        @repository_config.default_repo_type = repo_type
      end

      def self.repository
        @repository_config
      end

      def self.post_config
        @repository_config.load_repos
        require "listeners_config"
      end
    end

    class Symbol
      def const_string
        self.to_s.split('_').map(&:capitalize).join
      end

      def singularize
        self.to_s.chomp("s")
      end
    end

    class RepositoryConfig
      attr_writer :default_repo_type

      def initialize
        @default_repo_type = :memory
        @repositories = {posts: nil}
        RepositoryConfig.define_repo_methods(@repositories)
      end

      def load_repos
        @repositories.each do |repo, repo_type|
          repo_type ||= @default_repo_type
          require "repositories/#{repo.to_s}/#{repo_type.to_s}"

          Repository.register repo.singularize.to_sym, Kernel.const_get("Repositories::#{repo.const_string}::#{repo_type.const_string}").new
        end
      end

      def self.define_repo_methods(repositories)
        repositories.keys.each do |repo|
          define_method "#{repo}=" do |repo_type|
            repositories[repo] = repo_type
          end
        end
      end
    end
  end
end
