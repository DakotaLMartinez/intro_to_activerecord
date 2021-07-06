# require "sinatra/activerecord"
require_relative "intro_to_activerecord/version"
require_relative "intro_to_activerecord/exercise"
require_relative "intro_to_activerecord/examples"

# IMPORTANT! Don't forget to establish your database connection below.
# ActiveRecord::Base.establish_connection(
#   database: "db/intro_to_activerecord.sqlite",
#   adapter: "sqlite3"
# )

module IntroToActiverecord
  class Error < StandardError; end
  # Your code goes here...
end
