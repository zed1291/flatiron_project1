class WeatherCLI

PROMPT = TTY::Prompt.new
CHOICES = {yes: 1, no: 2}

    # def user
    #     PROMPT.ask("Enter username")
    # end

    def greet
        PROMPT.yes?("Would you like to get the weather?")
    end
    
    def get_city
        PROMPT.ask("Where?")
    end

    def run
        # puts "Welcome to Zoonie Weather!"
        # User.all.any? {|account| account.username = user} ? username = user : User.create(username: user)
        answer = greet
        if answer == true
            variable = get_city
            puts get_weather(variable)
        else answer == false
            puts "bye felicia"
        end
    end

    # def get_weather city
    #     api_key = "3515b22b30309dd2099a17dbb35cedd8"
    #     api = OpenWeatherMap::API.new(api_key, 'en', 'imperial')
    #     temp = api.current(city).weather_conditions.temperature
    #     conditions = api.current(city).weather_conditions.description
    #     "The temp in #{city} is #{temp}ºF and the condition is #{conditions}."
    # end

    # def welcome
    #     puts Figlet.new("JETSETTER WEATHER").to_s.colorize(:blue)
    # end

#     def instructions
#         puts 'Enter your city to get started'
#     end



# cities = ["Seattle", "Houston", "New York City", "Washington D.C.", "Paris"]
# cities.each {|city| p get_weather(city)}

end