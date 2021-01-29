class Favorite < ActiveRecord::Base
    belongs_to :user
    belongs_to :city

    def get_weather city
        api_key = "3515b22b30309dd2099a17dbb35cedd8"
        api = OpenWeatherMap::API.new(api_key, 'en', 'imperial')
        temp = api.current(city).weather_conditions.temperature
        conditions = api.current(city).weather_conditions.description
        "The temp in #{city} is #{temp}ºF and the condition is #{conditions}."
    end

    # def most_favorite_city

end
