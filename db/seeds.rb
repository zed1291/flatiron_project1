User.destroy_all
City.destroy_all
Favorite.destroy_all


user1 = User.create(username: "yellowsnow")
user2 = User.create(username: "joeexotic")
user3 = User.create(username: "thisisthedog")

city1 = City.create(name: "New York City")
city2 = City.create(name: "Paris")
city3 = City.create(name: "San Francisco")
city4 = City.create(name: "London")
city5 = City.create(name: "Tokyo")

fav1 = Favorite.create(user_id: 1, city_id: 5)
fav2 = Favorite.create(user_id: 1, city_id: 4)
fav3 = Favorite.create(user_id: 1, city_id: 2)
fav4 = Favorite.create(user_id: 2, city_id: 1)
fav5 = Favorite.create(user_id: 3, city_id: 3)
fav6 = Favorite.create(user_id: 3, city_id: 1)



