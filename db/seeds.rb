Hotel.destroy_all

hotel = Hotel.create!(
  name: "Hôtel Cheap",
  address: "1 Place de l'Hôtel de Ville, 75000 Paris"
)

hoteldeux = Hotel.create!(
  name: "Dodoland",
  address: "1 Place Nouille, 75020 Paris"
)

rooms = Room.create!([
    { capacity: 2, price_per_night: 20, hotel: hotel },
    { capacity: 4, price_per_night: 30, hotel: hotel },
    { capacity: 4, price_per_night: 18, hotel: hotel },
    { capacity: 1, price_per_night: 35, hotel: hoteldeux },
    { capacity: 2, price_per_night: 25, hotel: hotel },
    { capacity: 3, price_per_night: 19, hotel: hoteldeux }
])

puts "Hôtel, chambres, et réservations créés."
