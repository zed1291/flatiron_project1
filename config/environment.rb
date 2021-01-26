require 'bundler/setup'
Bundler.require
require 'rake'
require 'active_record'

require_relative '../lib/user.rb'

DB = ActiveRecored::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "./db/users.db"
)

DB = ActiveRecord::Base.connection