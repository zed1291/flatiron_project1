require 'bundler/setup'
Bundler.require

require 'rake'
require 'sqlite3'
require 'active_record'
require 'tty-prompt'
require 'sinatra'
require 'sinatra/activerecord'
require 'require_all'
require 'rspec'
require 'pry'
require 'colorize'
require 'figlet'
require 'openweathermap'


ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/weatherusers.db"
)

require 'logger'
ActiveRecord::Base.logger = nil
# Logger.new(STDOUT)

require_all 'app'
# require_all 'db'

# DB = ActiveRecord::Base.connection

# PROMPT = TTY::Prompt.new
# choices = {yes: 1, no: 2}

# prompt.select("Would you like to get the weather?", choices)

# prompt.yes?"Do you want the weather?" do |q|
#     q.suffix "Ya/Nah"
# end