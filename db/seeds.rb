# frozen_string_literal: true

require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#Faker::Food.dish
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meal.create([
    { category: 'Breakfast', name: Faker::Food.dish, url: Faker::Internet.url(host: 'ThemDaleysBeCookin.com', path: '/yummy-image.html'), image_url: Faker::LoremFlickr.image(size: "300x600", search_terms: ['cooking', 'meal', 'breakfast'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45) },

    { category: 'Breakfast', name: Faker::Food.dish, url: Faker::Internet.url(host: 'ThemDaleysBeCookin.com', path: '/yummy-image.html'), image_url: Faker::LoremFlickr.image(size: "300x600", search_terms: ['cooking', 'meal', 'breakfast'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45) },

    { category: 'Breakfast', name: Faker::Food.dish, url: Faker::Internet.url(host: 'ThemDaleysBeCookin.com', path: '/yummy-image.html'), image_url: Faker::LoremFlickr.image(size: "300x600", search_terms: ['cooking', 'meal', 'breakfast'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45) },


#! LUNCH

    { category: 'Lunch', name: Faker::Food.dish, url: Faker::Internet.url(host: 'ThemDaleysBeCookin.com', path: '/yummy-image.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal', 'lunch'], match_all: true), cooking_time: 10 },

    { category: 'Lunch', name: Faker::Food.dish, url: Faker::Internet.url(host: 'ThemDaleysBeCookin.com', path: '/yummy-image.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal', 'lunch'], match_all: true), cooking_time: 10 },

    { category: 'Lunch', name: Faker::Food.dish, url: Faker::Internet.url(host: 'ThemDaleysBeCookin.com', path: '/yummy-image.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal', 'lunch'], match_all: true), cooking_time: 10 },



    { category: 'Dinner', name: Faker::Food.dish, url: Faker::Internet.url(host: 'ThemDaleysBeCookin.com', path: '/yummy-image.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal', 'dinner'], match_all: true), cooking_time: 75 },


    { category: 'Dinner', name: Faker::Food.dish, url: Faker::Internet.url(host: 'ThemDaleysBeCookin.com', path: '/yummy-image.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal', 'dinner'], match_all: true), cooking_time: 75 },


    { category: 'Dinner', name: Faker::Food.dish, url: Faker::Internet.url(host: 'ThemDaleysBeCookin.com', path: '/yummy-image.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal', 'dinner'], match_all: true), cooking_time: 75 },


    ])

Recipe.create([
    { category: 'Breakfast', name: 'Quiche', url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: 15 },

    { category: 'Lunch', name: 'Hamburger', url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: 45 },

    { category: 'Dinner', name: 'Pasta', url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: 25 }
               ])

            #    Faker::Internet.url(host: 'example.com', path: '/foobar.html')

# ! Meal Recipes 
r1 = Meal.all[0]
r2 = Meal.all[1]
r3 = Meal.all[2]
r4 = Meal.all[3]
r5 = Meal.all[4]

r1.recipes.create(category: 'Breakfast', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))

r1.recipes.create(category: 'Lunch', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))

r1.recipes.create(category: 'Dinner', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))

r2.recipes.create(category: 'Breakfast', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))

r2.recipes.create(category: 'Lunch', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))

r2.recipes.create(category: 'Dinner', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))

r2.recipes.create(category: 'Dinner', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))

r3.recipes.create(category: 'Breakfast', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))

r3.recipes.create(category: 'Lunch', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))

r3.recipes.create(category: 'Dinner', name: Faker::Food.dish, url: Faker::Internet.url(host: 'example.com', path: '/foobar.html'), image_url: Faker::LoremFlickr.image(size: "400x800", search_terms: ['cooking', 'meal'], match_all: true), cooking_time: Faker::Number.between(from: 15, to: 45))
