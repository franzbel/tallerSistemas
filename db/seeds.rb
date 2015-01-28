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

comidas = FoodMenu.create([{ name: 'Pique Macho', photo: 'plato4.jpg', 
		description: 'Carne de res, salchicha, papas, huevo, rodajas de pimiento y tomate', price: 50},
	{name: 'Picante de pollo', photo: 'plato5.jpg',
		description: 'Carne de pollo y lengua de res, papas, arroz y chunio', price: 35},
	{name: 'Lapping', photo: 'plato3.jpg',
		description: 'Pecho de vaca asada, habas, choclo, papa, ensalada', price: 40},
	{name: 'Picante de lengua', photo: 'plato6.jpg',
		description: 'Filamentos de res desidratado', price: 40},
	{name: 'Picante mixto', photo: 'plato2.jpg',
		description: 'Carne de res empanizada', price: 40},
	{name: 'Chajchu', photo: 'plato1.jpg',
		description: 'Pecho de vaca asada, habas, choclo, papa, ensalada', price: 40}])

# MENU BEBIDAS

bebidas = DrinkMenu.create([{name: 'Heineken', photo: 'heineken.jpg', description: 'cerveza importada', price: 20},
	{name: 'Budweiser', photo: 'budweiser.jpg', description: 'tequila, limon, licor de naranja', price: 20},
	{name: 'Paulaner', photo: 'paulaner.jpg', description: 'tequila, limon, licor de naranja', price: 20},
	{name: 'ron abuelo', photo: 'ronabuelo.jpg', description: 'tequila, limon, licor de naranja', price: 20},
	{name: 'ron abuelo 7', photo: 'ronabuelo7.jpg', description: 'tequila, limon, licor de naranja', price: 20},
	{name: 'ron abuelo 12', photo: 'ronabuelo12.jpg', description: 'tequila, limon, licor de naranja', price: 20}])