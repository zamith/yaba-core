require "yaba/core/persistence/posts"
require 'wisper'

Wisper.add_listener Persistence::Posts.new
