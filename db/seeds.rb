require 'csv'

Project.delete_all


data = CSV.read("db/Project_locations.csv")


data.each do |row|
		Project.create(
			name: row[0],
			project_number: row[1],
			address: row[2],
			city: row[3],
			county: row[4],
			state: row[5],
			zip_code: row[6],
			apn: row[7],
			latitude: row[8],
			longitude: row[9],
			elevation: row[10]
		)
		p row
end

# CSV.foreach(file) do |row|
# 	if first
# 		p row
# 	else

# 			name: row[0],
# 			project_number: row[1],
# 			address: row[2],
# 			city:[3],
# 			county:[4],
# 			state:[5],
# 			zip:[6],
# 			apn:[7],
# 			latitude: row[8],
# 			longitude: row[9],
# 			elevation: row[10]

# 		p row
# 	end
# end

# first = true
# CSV.foreach(file) do |row|
# 	if first
# 		first = false
# 		next
# 	end

# 	p row
# end