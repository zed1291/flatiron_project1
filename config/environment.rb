require 'bundler/setup'
Bundler.require

require 'rake'
require 'sqlite3'
require 'active_record'
require 'tty-prompt'
require 'sinatra-activerecord'
require 'require_all'
require 'rspec'
require 'pry'
require 'colorize'
require 'figlet'
require 'openweathermap'
 
require_all 'app'
require_all 'db'

require 'logger'
ActiveRecord::Base.logger = nil

DB = ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "./db/users.db"
)

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'])

# DB = ActiveRecord::Base.connection

# PROMPT = TTY::Prompt.new