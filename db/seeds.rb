# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

50.times do
	eleve = Eleve.create(first_name: Faker::Name.first_name, 
						last_name: Faker::Name.last_name,
						email: Faker::Internet.free_email,
						age: rand(18..45), cour_id: rand(1..5)) 
end

10.times do
	cour = Cour.create(title: Faker::HowIMetYourMother.catch_phrase,
						description: Faker::HowIMetYourMother.quote)
end