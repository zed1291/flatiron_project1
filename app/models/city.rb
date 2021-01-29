class City < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    # def which_user_has_favorited_this_city
    # end

    def self.adding_city city
        if City.all.any? {|place| place.name == city}
            City.all.find {|place| place.name == city}
        else
            City.create(name: city)
        end
    end


end