# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

lemon = Ingredient.create(name: "lemon")
Ingredient.create(name: "gin")
Ingredient.create(name: "tonic")
Ingredient.create(name: "strawberry")
Ingredient.create(name: "rum")
Ingredient.create(name: "ice crushed")
vodka = Ingredient.create(name: "vodka")

martini = Cocktail.create(name: 'martini')
Cocktail.create(name: 'tequila sunrise')

Dose.create(description: 'half a lemon', ingredient: lemon, cocktail: martini)
Dose.create(description: 'half a lemon', ingredient: vodka, cocktail: martini)
