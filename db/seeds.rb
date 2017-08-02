
Product.destroy_all

images_array = ['app/assets/images/beer.jpg', 'app/assets/images/cola.jpg', 'app/assets/images/tp.jpg']

50.times do |index|
  image = images_array.shuffle.sample
  Product.create!(name: Faker::Commerce.product_name,
                        price: Faker::Commerce.price,
                        category: Faker::Commerce.department(1),
                        description: Faker::ChuckNorris.fact,
                        avatar: File.new("#{image}")
                        )

end
