# JSON API Solution
# require 'json'
# require 'open-uri'

# ingredient_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# ingredients_serialized = open(ingredient_url).read
# ingredients = JSON.parse(ingredients_serialized)

# ingredients["drinks"].each do |ingredient_hash|
#   ingredient = Ingredient.new(name: ingredient_hash["strIngredient1"])
#   ingredient.save
# end

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

c1 = Cocktail.create(name: 'Gin & Tonic')
c2 = Cocktail.create(name: 'Manhattan')
c3 = Cocktail.create(name: 'Margherita')

i1 = Ingredient.create(name: 'Gin')
i2 = Ingredient.create(name: 'Tonic')
i3 = Ingredient.create(name: 'Tequilla')

Dose.create(cocktail: c1, ingredient: i1, description: "Lorem ipsum dolor sit amet")
Dose.create(cocktail: c1, ingredient: i2, description: "Lorem ipsum dolor sit amet")
Dose.create(cocktail: c2, ingredient: i2, description: "Lorem ipsum dolor sit amet")
Dose.create(cocktail: c3, ingredient: i3, description: "Lorem ipsum dolor sit amet")



