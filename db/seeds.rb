# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


10.times do |n|
	nombre = Faker::Name.name
	Organizacion.create!(nombre_organizacion: nombre)
end

orgs =  Organizacion.order(:created_at).take(6)

50.times do
	objetivo = Faker::Lorem.sentence(5)
	orgs.each {|organizacion| organizacion.objetivos.create!(nombre_objetivo: objetivo)}
end