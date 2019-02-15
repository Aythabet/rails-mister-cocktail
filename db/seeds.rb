Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts "Creating Cocktails"

cocktail1 = Cocktail.create!(name: "Martini")
cocktail2 = Cocktail.create!(name: "Bloody Mary")
cocktail3 = Cocktail.create!(name: "Gin Fizz")
cocktail4 = Cocktail.create!(name: "Mojito")
cocktail5 = Cocktail.create!(name: "Negroni")
cocktail5 = Cocktail.create!(name: "Daiquiri")
puts "Cocktails Created"

puts "Creating Ingredients"

ingredient1 = Ingredient.create!(name: "Lemon")
ingredient2 = Ingredient.create!(name: "Ice")
ingredient3 = Ingredient.create!(name: "Mint leaves")
ingredient4 = Ingredient.create!(name: "Coca")
ingredient5 = Ingredient.create!(name: "Whiskey")

puts "Ingredients Created"

