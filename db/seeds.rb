# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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
