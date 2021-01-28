<h1 align="center">JETSETTER WEATHER</h1>
<h2> Deliverables: RUBY CLI Project</h2>

<h3>Using OpenWeatherAPI to get current weather info or forecast for a user</h3>
<h4>Models: user(username), favorite(user_id, city_id), city (name)</h4>

<h4>Create a table of favourite cities/major cities</h4>

***

User stories:

1. User searches for weather or forecast by city name. Program will return string with city's weather conditions (temp (max and min), condition, precip).
2. User signs in and is able to do same as above and able to save city in favorites.
3. User inputs criteria (city, temp range, conditions) - Program returns a list of cities with current weather (temp and conditions) meeting the criteria
4. User picks "random" - Program suggests a random city out of the favourite cities list with current weather
User picks certain weather condition - Program returns all cities of a certain weather condition
    -either of favourites list
    -or out of major cities list