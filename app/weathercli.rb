# class WeatherCLI

#     PROMPT = TTY::Prompt.new

#     def run 
#         puts "Welcome to Zoonie Weather!"
#         input = PROMPT.ask("Enter username")
#         @user = User.set_username_for_application(input)
#         question1
#     end

#     def question1
#         answer1 = PROMPT.yes?("Would you like the weather of your favourite cities?")
#         if answer1 == true
#             @user.get_my_fav_weather
#             question2
#         else
#             goodbye
#         end   
#     end

#     def question2
#         answer2 = PROMPT.yes?("Would you like to get weather for another city?")
#         if answer2 == true
#             what_city = PROMPT.ask("What city?")
#             puts @user.get_weather(what_city)
#             question2
#         else
#             question3
#         end
#     end

#     def question3
#         answer3 = PROMPT.yes?("Would you like to update your favourite cities list?")
#         if answer3 == true
#             question4
#         else
#             goodbye
#         end
#     end

#     def question4       
#         answer4 = PROMPT.yes?("would you like to add a new city?")
#         if answer4 == true
#             city_to_add = PROMPT.ask("What city would you like to add?")
#             comment = PROMPT.ask("Add a comment about the city")
#             if City.find_by(name: city_to_add).name = city_to_add
#                 Favorite.create(user_id: @user_id, city_id: City.find_by(name: city_to_add).id, comment: comment)
#             else
#                 new_city = City.create(name: city_to_add)
#                 Favorite.create(user_id: @user.id, city_id: new_city.id, comment: comment)
#                 @user.list_of_cities
#             end
#         else
#             question5
#         end
#     end

#     def question5
#         answer5 = PROMPT.yes?("Would you like to delete a city?")
#         if answer5 == true
#             puts "These are your current favourite cities:"
#             @user.list_of_cities
#             to_delete = PROMPT.ask("Which one would you like to delete?")
#             instance_to_delete = City.find_by(name: to_delete)
#             fav_instance = Favorite.where(user_id: @user.id, city_id: instance_to_delete.id)
#             Favorite.delete(fav_instance.first.id)
#             @user.list_of_cities
#             question6
#         else
#             question6
#         end
#     end

#     def question6
#         answer6 = PROMPT.yes?("Would you like to keep using the app, or are you done?")
#         if answer6 == true
#             question1
#         else
#             goodbye
#         end
#     end

#     def goodbye
#         puts "Have a great day!"
#     end



# end
# final_answer = PROMPT.ask("Would you like to keep using the app, or are you done?")
# final_answer == true ? (make it go to the beginning) : puts "have a great day!"

# end