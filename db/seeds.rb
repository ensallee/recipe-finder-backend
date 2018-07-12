# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mblev = User.create(username: 'mblev', password: 'password', display_name: 'Michelle B.')
ensallee = User.create(username: 'ensallee', password: 'password', display_name: 'Betsy S.')
rotoole = User.create(username: 'rotoole', password: 'password', display_name: "Ryan O.")

recipe1 = Recipe.create(label: 'Stir Fry', source: 'My Brain', image: 'http://via.placeholder.com/350x150', ingredients: 'tofu, peppers, onions, mushrooms')

ensallee.recipes << recipe1
