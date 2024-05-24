require 'open-uri'
require 'json'

# Seed for the database

# Clean the database
puts "Cleaning the database..."
Cat.destroy_all if Rails.env.development?
puts "Database cleaned!"

# Create many cats with an API
url = "https://api.thecatapi.com/v1/breeds"
response = URI.open(url).read
data = JSON.parse(response)

puts "Creating cats..."
index = 0
data.each do |cat|
  break if index == 30
  img_url = "https://api.thecatapi.com/v1/images/#{cat["reference_image_id"]}"
  img_rep = URI.open(img_url).read
  img_data = JSON.parse(img_rep)

  Cat.create!(
    name: cat["name"],
    picture: img_data["url"],
    origin: cat["origin"],
    description: cat["description"],
    temperament: cat["temperament"]
  )
  index += 1
end
puts "Cats created!"
