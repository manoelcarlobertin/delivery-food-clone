puts "Criando restaurantes..."

10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Faker::Restaurant.type,
    image_url: "https://source.unsplash.com/600x400/?restaurant,food"
  )

  puts "Criando pratos para #{restaurant.name}..."

  5.times do
    Dish.create!(
      name: Faker::Food.dish,
      description: Faker::Food.description,
      price: rand(10.0..50.0).round(2),
      image_url: "https://source.unsplash.com/600x400/?food,meal",
      restaurant: restaurant
    )
  end
end

puts "Restaurantes e pratos criados com sucesso!"
