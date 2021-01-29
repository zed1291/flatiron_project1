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
require 'ruby_figlet'
require 'openweathermap'


ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/weatherusers.db"
)

require 'logger'
ActiveRecord::Base.logger = nil
# Logger.new(STDOUT)

require_all 'app'


# DB = ActiveRecord::Base.connection