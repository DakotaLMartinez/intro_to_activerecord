require "rspec/core/rake_task"
require "sinatra/activerecord/rake"
ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "db/examples.sqlite"
)

RSpec::Core::RakeTask.new(:spec)
desc "Says HI"
task :hi do 
    puts "hello!"
end

task :default => :spec
