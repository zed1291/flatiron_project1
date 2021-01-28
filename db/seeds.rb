# User.destroy_all
# City.destroy_all
# Favorite.destroy_all


User.create(username: "yellowsnow")
User.create(username: "joeexotic")
User.create(username: "thisisthedog")

City.create(name: "New York City")
City.create(name: "Paris")
City.create(name: "San Francisco")
City.create(name: "London")
City.create(name: "Tokyo")

Favorite.create(user_id: 1, city_id: 5, comment: "The best food ever")
Favorite.create(user_id: 2, city_id: 1, comment: "Awesome nightlife")
Favorite.create(user_id: 2, city_id: 2, comment: "Musée du Louvre est très génial!")
Favorite.create(user_id: 3, city_id: 1, comment: "Best city in the world")
Favorite.create(user_id: 2, city_id: 3, comment: "Tech Capital")
Favorite.create(user_id: 1, city_id: 4, comment: "Trip next week")