
Product.destroy_all


100.times do |index|
  Product.create!(name: Faker::Commerce.product_name,
                        price: Faker::Commerce.price,
                        category: Faker::Commerce.department(1),
                        description: Faker::ChuckNorris.fact)

end
