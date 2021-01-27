class User < ActiveRecord::Base
    has_many :favorites
    has_many :cities, through: :favorites
end