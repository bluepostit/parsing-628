require 'csv'

########## Parsing ##########
file_path = 'data/beers.csv'

csv_options = {
  col_sep: ',',
  quote_char: '"',
  headers: :first_row
}

CSV.foreach(file_path, csv_options) do |row|
  # puts "#{row[0]}: a #{row[1]} beer from #{row[2]}"
  puts "#{row['Name']}: a #{row['Appearance']} beer from #{row['Origin']}"
end

########## Storing ##########
file_path = 'data/beers2.csv'

csv_options = {
  col_sep: ',',
  quote_char: '"',
  force_quotes: true
}
CSV.open(file_path, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Asahi', 'Pale Lager', 'Japan']
  csv << ['Guinness', 'Stout', 'Ireland']
end
