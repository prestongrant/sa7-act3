require 'csv'

data = []

CSV.foreach('data.csv', headers: true) do |row|
    hash = row.to_hash
    data << hash
end 

puts data