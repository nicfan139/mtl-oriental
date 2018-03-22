# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating Users...'
# Users
User.create(
  first_name: "Nic",
  last_name: "Fan",
  email: "nicfan@gmail.com",
  password: "test123",
  admin: true
  )


puts 'Creating Restaurants...'
# Restaurants
Restaurant.create(
  name: "Gyu-Kaku",
  category: "Japanese",
  address: "1255 Crescent St, Montreal, QC, H3G 2B1",
  district: "Concordia"
  )

Restaurant.create(
  name: "Singh's",
  category: "Indian",
  address: "3712 St Laurent Blvd, Montreal, QC H2X 2V4",
  district: "Plateau"
  )

Restaurant.create(
  name: "Tsukuyomi",
  category: "Japanese",
  address: "5207 St Laurent Blvd, Montreal, QC H2T 1S4",
  district: "Mile-End"
  )

Restaurant.create(
  name: "Pho Lien",
  category: "Vietnamese",
  address: "5703B Chemin de la Côte-des-Neiges, Montreal, QC H3S 1Y7",
  district: "Côte-des-Neiges"
  )

Restaurant.create(
  name: "Lanzhou Lamian",
  category: "Chinese",
  address: "1006 St Laurent Blvd, Montreal, QC H2Z 9Y9",
  district: "Chinatown"
  )

Restaurant.create(
  name: "Hansang",
  category: "Korean",
  address: "5136 Park Ave, Montreal, QC H2V 4G5",
  district: "Mile-End"
  )

Restaurant.create(
  name: "Hotpot Panda",
  category: "Chinese",
  address: "2170 Saint-Catherine St W, Montreal, QC H3H 1M7",
  district: "Atwater"
  )

Restaurant.create(
  name: "Furusato",
  category: "Japanese",
  address: "2137 Rue de Bleury, Montréal, QC H3A 2K2",
  district: "Place-des-Arts"
  )

Restaurant.create(
  name: "Kyoto",
  category: "Japanese",
  address: "861 Decarie Blvd, Saint-Laurent, QC H4L 3L7",
  district: "Côte-Vertu"
  )

Restaurant.create(
  name: "5000 ans",
  category: "Korean",
  address: "3441 St Denis St, Montreal, QC H2X 3L1",
  district: "Plateau"
  )
