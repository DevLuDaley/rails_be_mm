# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meal.create([
    { category: 'Breakfast', name: 'Eggs', url: 'www.rando-link.org', image_url: 'www.image-api.org', cooking_time: 15 },
    { category: 'Lunch', name: 'Caesar-Salad', url: 'www.rando-link.org', image_url: 'www.image-api.org', cooking_time: 10 },
    { category: 'Lunch', name: 'Chicken-Salad', url: 'www.rando-link.org', image_url: 'www.image-api.org', cooking_time: 45 },
    { category: 'Dinner', name: 'Baked-Ziti', url: 'www.rando-link.org', image_url: 'www.image-api.org', cooking_time: 75 },
    { category: 'Dinner', name: 'Ackee & Saltfish', url: 'www.rando-link.org', image_url: 'www.image-api.org', cooking_time: 75 },
    { category: 'Dinner', name: 'Baked-Alaskan', url: 'www.rando-link.org', image_url: 'www.image-api.org', cooking_time: 120 }
               ])

Recipe.create([
    { category: 'Breakfast', name: 'Quiche', url: 'www.rando-link.org', image_url: 'www.image-api.org', cooking_time: 15 },
    { category: 'Lunch', name: 'Hamburger', url: 'www.rando-link.org', image_url: 'www.image-api.org', cooking_time: 45 },
    { category: 'Dinner', name: 'Pasta', url: 'www.rando-link.org', image_url: 'www.image-api.org', cooking_time: 25 }
               ])