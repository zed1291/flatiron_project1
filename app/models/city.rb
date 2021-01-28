class City < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    # def which_user_has_favorited_this_city
    # end
end