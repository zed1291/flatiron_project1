class User < ActiveRecord::Base
    has_many :favorites
    has_many :cities, through: :favorites

    def self.set_username_for_application (username)
        if User.all.any? {|account| account.username == username}
            # puts "there is a match"
            User.all.find {|account| account.username == username}
        else
            # puts "there is no match"
            User.create(username: username)
        end
    end

    def get_fav_cities
        Favorite.where(user_id: self.id)
    end

    def get_my_fav_weather
        self.get_fav_cities.map {|favorite| City.where(id: favorite.city_id).first.name}.each {|city| p get_weather(city)}
    end

    def get_weather city
        api_key = "3515b22b30309dd2099a17dbb35cedd8"
        api = OpenWeatherMap::API.new(api_key, 'en', 'imperial')
        temp = api.current(city).weather_conditions.temperature
        conditions = api.current(city).weather_conditions.description
        "The temp in #{city} is #{temp}ºF and the condition is #{conditions}."
    end

    

end