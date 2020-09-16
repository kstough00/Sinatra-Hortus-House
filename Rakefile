ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake' #we leave this here because only our rakefile needs to know about rake tasks, not the whole app.

task :console do
    Pry.start
end
