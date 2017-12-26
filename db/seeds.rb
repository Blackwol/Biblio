# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Criando user..."
	
puts "Criando user...[OK!]"

puts "Criando categorias..."
	categories = ["Romance", "Aventura", "Ação", "Ficção"]

	categories.each do |category|
		Category.find_or_create_by(name: category)
	end
puts "Criando categorias...[OK!]"

puts "Criando livros..."
30.times do
	Book.find_or_create_by(title: Faker::Name.name, 
						   author: Faker::Name.name, 
						   editor: Faker::Name.name, 
						   page: Random.rand(900))
end
puts "Criando livros...[OK!]"