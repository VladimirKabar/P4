# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mateo = User.create(first_name: 'Sylwia', last_name: 'S', email: 'swidzinska.sylwia@gmail.com', password: 'Sy123lwia&', password_confirmation: 'Sy123lwia&', editor: 'yes', admin: 'yes')
julian = User.create(first_name: 'Vladimir', last_name: 'K', email: 'vladimir.kabar@gmail.com', password: 'Kierow123nik&', password_confirmation: 'Kierow123nik&', editor: 'yes', admin: 'yes')


c1 = Cuisine.create(region: "Dania główne", image: "http://krasnodwor.pl/wp-content/gallery/dania_glowne/386019_257205771007413_97663006_n.jpg")

c2 = Cuisine.create(region: "Zupy", image: "http://czerwonyobcas.pl/wp-content/uploads/2013/02/zupa-pomidorowa.jpg")

c3 = Cuisine.create(region: "Przystawki", image: "http://jadalne-niejadalne.blog.pl/files/2014/10/dsc_0154.jpg")

c4 = Cuisine.create(region: "Desery", image: "http://www.tapetus.pl/obrazki/n/172419_kolorowe-desery.jpg")

c5 = Cuisine.create(region: "Inne wypieki", image: "http://polki.pl/work/privateimages/formats/V5_MT_LIFE/141636.jpg")