require_relative './config/environment'

desc 'outputs greeting to the terminal'
task :greeting do 
    puts "Welcome to Better Weather"
end

desc 'opens console'
task :console => :environment do
    Pry.start
end
  
desc 'requires environment file for console'
  task :environment do
    require_relative 'config/environment'
end