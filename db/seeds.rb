# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'mybach@gmail.com',
            firstname: 'Kamil',
            lastname: 'Adamczyk',
            password: '12345678',
            password_confirmation: '12345678',
            admin: true)

5.times do |user|
  firstname = Faker::Name.first_name
  lastname = Faker::Name.last_name
  email = Faker::Internet.email
  password = 'secret123'

  User.create(firstname: firstname,
              lastname: lastname,
              email: email,
              password: password,
              password_confirmation: password,
              admin: false)
end

5.times do |cat|
  name = Faker::Product.brand
  Category.create(name: name)
end

20.times do |product|
  title = Faker::Product.product_name
  description = Faker::Lorem.sentence
  price = rand(1..99)
  user_id = rand(1..6)
  category_id = rand(1..5)

  Product.create(title: title,
                  description: description,
                  price: price,
                  category_id: category_id,
                  user_id: user_id)
end

40.times do |review|
  content = Faker::Lorem.paragraph
  rating = rand(1..5)
  product_id = rand(1..20)
  user_id = rand(1..6)

  Review.create(content: content,
                rating: rating,
                product_id: product_id,
                user_id: user_id)
end