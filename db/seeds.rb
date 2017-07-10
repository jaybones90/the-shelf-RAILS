
Product.destroy_all


10.times do |index|
  Product.create!(name: "iPhone 7",
                        price: "2.50",
                        category: "Electronics",
                        description: "Cell Phone")

end
