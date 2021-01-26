require 'bundler/setup'
Bundler.require

require 'rake'
require 'active_record'
require 'tty-prompt'


require_relative '../app/models/user.rb'

DB = ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "./db/users.db"
)

DB = ActiveRecord::Base.connection

PROMPT = TTY::Prompt.new