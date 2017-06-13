100.times do
  product = Product.new
  product.name = Faker::Commerce.product_name
  product.price = Faker::Commerce.price(10,10000)
  product.description = Faker::Lorem.paragraph
  product.stock = Faker::Number.number(3)
  product.cod_eligibility = [true,false].sample
  category = Category.all.sample
  product.category_id = category.id
  product.sub_category_id = category.sub_categories.sample.id
  product.save

end
