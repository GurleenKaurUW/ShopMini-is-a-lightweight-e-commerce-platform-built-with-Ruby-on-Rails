# db/seeds.rb
Product.create!([
  { name: 'T-Shirt', price_cents: 1999, stock: 50, description: 'Soft cotton tee', image_url: 'https://via.placeholder.com/300' },
  { name: 'Mug', price_cents: 1299, stock: 40, description: 'Ceramic mug', image_url: 'https://via.placeholder.com/300' },
  { name: 'Stickers', price_cents: 599, stock: 100, description: 'Vinyl stickers', image_url: 'https://via.placeholder.com/300' }
])

# Create an admin user (Devise required in real app)
User.create!(email: 'admin@example.com', password: 'password', admin: true) if defined?(User)
