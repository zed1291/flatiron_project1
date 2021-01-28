User.destroy_all
City.destroy_all
Favorite.destroy_all


user1 = User.create("yellowsnow")
user2 = User.create("joeexotic")
user3 = User.create("thisisthedog")

city1 = City.create("New York City")
city2 = City.create("Paris")
city3 = City.create("San Francisco")
city4 = City.create("London")
city5 = City.create("Tokyo")

fav1 = Favorite.create(user1, city5)
fav2 = Favorite.create(user1, city4)
fav3 = Favorite.create(user1, city2)
fav4 = Favorite.create(user2, city1)
fav5 = Favorite.create(user3, city3)
fav6 = Favorite.create(user3, city1)



