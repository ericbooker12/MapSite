# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

file = "db/project_locations.csv"

first = true

CSV.foreach(file) do |row|
	if first
		puts row
	else
		Project.create(
			name: row[0],
			project_number: row[1],
			address: row[2],
			city:[3],
			county:[4],
			state:[5],
			zip:[6],
			apn:[7],
			latitude: row[8],
			longitude: row[9],
			elevation: row[10]
		)
		puts row
	end
end