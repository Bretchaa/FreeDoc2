# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

=begin

100.times do 
  specialities_list = Specialty.create!(name: ["generalist", "ostheo", "cancerologue", "pediatre", "kine"].sample)
end

City.destroy_all

 100.times do 
  cities_list = City.create!(name: Faker::Address.city)
end

100.times do
  doctors_list = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city_id: rand(503..602))
end

100.times do
  doc_assigns_lists = DocAssign.create!(specialty_id: rand(1..100), doctor_id: rand(1..100))
end


100.times do
  patients_list = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(503..602))
end

=end

100.times do 
  appointments_list = Appointment.create!(date: Faker::Date.backward(days: 365), doctor_id: rand(1..100), patient_id: rand(1..100), city_id: rand(503..602))
end