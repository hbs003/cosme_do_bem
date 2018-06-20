# db/seeds.rb
puts 'Cleaning database...'
Order.destroy_all
Product.destroy_all
Category.destroy_all
User.destroy_all

puts 'Creating categories...'
shampoo = Category.create!(name: 'shampoo')
condicionador = Category.create!(name: 'condicionador')

puts 'Creating User...'

hbs = User.create!(first_name: 'Henrique', last_name: "Silva", email: "aaa@a.com", password: "123456" )

puts 'Creating products...'
Product.create!(user: hbs, sku: 'original-teddy-bear', name: 'Teddy bear', category: condicionador, quantity: "1", price: 55.50, photo: 'https://www.riobelleza.com.br/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/n/e/neutro---condionador-500ml_1.png')

Product.create!(user: hbs, sku: 'jean-mimi', name: 'Jean-Michel - Le Wagon', category: shampoo, quantity: "4", price: 30, photo: 'http://boticario.vteximg.com.br/arquivos/ids/189514-1000-1000/Match-Tonico-do-Crescimento-Condicionador-250ml-frontal-71674.jpg?v=636377231304200000')
Product.create!(user: hbs, sku: 'octocat',   name: 'Octocat -  GitHub',      category: shampoo, quantity: "5", price: 10.50,  photo: 'https://images.unsplash.com/photo-1519735777090-ec97162dc266?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ab4e5ebe73c797be1b90170a242bf113&auto=format&fit=crop&w=500&q=60')
puts 'Finished!'

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?