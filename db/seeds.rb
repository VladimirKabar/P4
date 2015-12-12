# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mateo = User.create(first_name: 'Mateo', last_name: 'Lazo', email: 'mateo@email.com', password: 'Mateo1', password_confirmation: 'Mateo1', editor: 'yes', admin: 'yes')
julian = User.create(first_name: 'Julian', last_name: 'Jones', email: 'julian@email.com', password: 'Julian1', password_confirmation: 'Julian1')
freida = User.create(first_name: 'Freida', last_name: 'Gray', email: 'freida@email.com', password: 'Freida1', password_confirmation: 'Freida1', editor: 'yes', admin: 'no')

c1 = Cuisine.create(region: "Kuchnia Polska", image: "http://s3.amazonaws.com/codecademy-content/courses/rails-auth/img/czech-bun.jpg")


c2 = Cuisine.create(region: "Kuchnia Francuska", image: "http://s3.amazonaws.com/codecademy-content/courses/rails-auth/img/italian-gnocchi.jpg")


c3 = Cuisine.create(region: "Kuchnia eksperymentalna", image: "http://s3.amazonaws.com/codecademy-content/courses/rails-auth/img/japanese-sushi.jpg")
