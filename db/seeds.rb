# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

10.times do
  Patient.create([{
  	name: Faker::Name.first_name,
  	surname: Faker::Name.last_name,
  	age: Faker::Number.between(1 , 99)
  }])
end

10.times do
  Doctor.create([{
  	name: Faker::Name.first_name,
  	surname: Faker::Name.last_name,
  	description: Faker::Lorem.paragraph(2, true, 4)
  }])
end