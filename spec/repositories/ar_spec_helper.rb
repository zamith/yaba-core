require 'repository'
require 'repositories/posts/active_record'

Repository.register :post, Repositories::Posts::ActiveRecord.new
