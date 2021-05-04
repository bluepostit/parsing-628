require 'json'
require 'open-uri'

url = 'https://api.github.com/users/bluepostit'
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)

puts "#{user['name']} - #{user['bio']}"
