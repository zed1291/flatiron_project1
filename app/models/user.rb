class User < ActiveRecord::Base
    has_many :favorites
    has_many :cities, through: :favorites

    def run
        set_username_for_application
    end

    def user
        PROMPT.ask("Enter username")
    end

    def set_username_for_application
        if User.all.any? {|account| account.username = user}
            @username = user
        else
            User.create(username: user)
        end
    end

    def get_my_favorite_cities_and_the_weather
        Favorite.all.select {|favorite| favorite.user_id == self.id}
    end 

    

end