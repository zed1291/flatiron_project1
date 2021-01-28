# require 'openweathermap'

# def get_weather city
#     api_key = "3515b22b30309dd2099a17dbb35cedd8"
#     api = OpenWeatherMap::API.new(api_key, 'en', 'imperial')
#     temp = api.current(city).weather_conditions.temperature
#     conditions = api.current(city).weather_conditions.description
#     "The temp in #{city} is #{temp}ºF and the condition is #{conditions}."
# end

# # p get_weather "Lyon"
# cities = ["Seattle", "Houston", "New York City", "Washington D.C.", "Paris"]
# # p get_weather("Paris")
# cities.each {|city| p get_weather(city)}

# def where_to_vist
#     city_temps = get_weather(cities)
#     if zed.mood == "Happy"
#         return /a city thats between 65 anf 70
#     else
#         "stay home"
#     end

# end