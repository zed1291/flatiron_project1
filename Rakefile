require_relative './config/environment'
require "sinatra/activerecord/rake"


desc 'opens console'
task :console => :environment do
    Pry.start
end
  
desc 'requires environment file for console'
  task :environment do
    require_relative 'config/environment'
end

desc 'starts program'
task :start do 
    puts "Welcome to Zoonie Weather"
end