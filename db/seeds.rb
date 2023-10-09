# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all

Airport.create!([{code: "MIA"}, {code: "FLL"}, {code: "SEA"}, {code: "CRW"},
    {code: "PBI"}])

Flight.destroy_all

Flight.create!([
    {start: DateTime.new(2023,1,20,17), duration: 2.5, origin: Airport.find_by(code: "MIA"), destination: Airport.find_by(code: "PBI")},
    {start: DateTime.new(2023,4,7,9), duration: 3, origin: Airport.find_by(code: "PBI"), destination: Airport.find_by(code: "SEA")},
    {start: DateTime.new(2023,5,18,18), duration: 7, origin: Airport.find_by(code: "FLL"), destination: Airport.find_by(code: "CRW")}])