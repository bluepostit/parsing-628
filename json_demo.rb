require 'json'

# TODO - let's read/write data from beers.json
file_path = 'data/beers.json'

# 1. Read the entire file into a string
beer_json = File.read(file_path)

# 2. Convert to hash
beer_data = JSON.parse(beer_json)

# 3. List all beer origins
p beer_data['beers'].map { |beer| beer['origin'] }.uniq

# 4. List all beers

beer_data['beers'].each do |beer|
  puts "#{beer['name']}: a #{beer['appearance']} beer from #{beer['origin']}"
end


####### Storing JSON #######

file_path = 'data/beers2.json'

beers = {
  beers: [
    {
      name:       'Edelweiss',
      appearance: 'White',
      origin:     'Austria'
    },
    {
      name:       'Guinness',
      appearance: 'Stout',
      origin:     'Ireland'
    },
  ]
}

# 1. Open file for writing
File.open(file_path, 'wb') do |file|
  # 2. Convert hash into JSON string
  json_string = JSON.pretty_generate(beers)
  # 3. Write JSON string to the file
  file.write(json_string)
end
