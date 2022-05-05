# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
specialties = ["general", "neuro"]

100.times do |index|
    Patient.create(first_name: "Prénom#{index}", last_name: "Nom#{index}")
end

100.times do |index|
    Doctor.create(first_name: "zsa#{index}", last_name: "Nom#{index}", specialty: specialties.sample(rand(1..2)), zip_code: rand((00000..99999).to_s))
end