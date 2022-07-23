# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

["History","Gaming","Sports","Programming","DataBase"].each  do |item|

  category = Category.create(name: item)

  5.times do
    Book.create!(title: Faker::Book.unique.title, description: Faker::Lorem.paragraph , 
    price: Faker::Commerce.price, image_url: Faker::LoremFlickr.image , category_id: category.id)
  end 
    
end
  