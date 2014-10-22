# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# USUARIOS

main_admin = User.create(:email => 'admin@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'admin', :role => 'admin')
main_admin = User.create(:email => 'asistente@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'asistente', :role => 'asistente')
main_admin = User.create(:email => 'barman@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'barman', :role => 'barman')
main_admin = User.create(:email => 'mesero@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'mesero', :role => 'mesero')
main_admin = User.create(:email => 'chef@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :name => 'chef', :role => 'chef')

# MENU COMIDAS

comidas = FoodMenu.create([{ name: 'Pique Macho', photo: 'pique.jpg', 
		description: 'Carne de res, salchicha, papas, huevo, rodajas de pimiento y tomate', price: 50},
	{name: 'Picante', photo: 'picante.jpg',
		description: 'Carne de pollo y lengua de res, papas, arroz y chunio', price: 35},
	{name: 'Lapping', photo: 'lapping.jpg',
		description: 'Pecho de vaca asada, habas, choclo, papa, ensalada', price: 40},
	{name: 'Chajchu', photo: 'chajchu.jpg',
		description: 'Pecho de vaca asada, habas, choclo, papa, ensalada', price: 40}])

# MENU BEBIDAS

bebidas = DrinkMenu.create([{name: 'Mojito', photo: 'mojito.png', description: 'ron, limon, menta, hierbabuena', price: 20},
	{name: 'Margarita', photo: 'margarita.png', description: 'tequila, limon, licor de naranja', price: 20},
	{name: 'Whisky', photo: 'whisky.png', description: 'Whisky', price: 30}])