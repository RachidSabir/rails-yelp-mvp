puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
bristol = {name: "Epicure", category: "french", address: "75008 Paris", phone_number: "0603666274"}
br = {name: "Epicure", category: "french", address: "75008 Paris", phone_number: "0603666274"}
bri = {name: "Epicure", category: "french", address: "75008 Paris", phone_number: "0603666274"}

[bristol, br, bri].each do |attributes|
  restaurant = Restaurant.create(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

yummy = {content: "yummy yummy", rating: 4, restaurant_id: 1}
yu = {content: "yummy yummy", rating: 4, restaurant_id: 2}
yum = {content: "yummy yummy", rating: 4, restaurant_id: 3}

[yummy, yu, yum].each do |attributes|
  review = Review.create(attributes)
  puts "Created #{review.content}"
end
puts "Finished!"
