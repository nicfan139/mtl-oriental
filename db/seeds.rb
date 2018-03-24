### Users ###

puts 'Creating Users...'

User.create(
  first_name: "Nic",
  last_name: "Fan",
  email: "nicfan@gmail.com",
  password: "test123",
  admin: true
  )

User.create(
  first_name: "Testy",
  last_name: "Test",
  email: "test@test.com",
  password: "test123",
  )


### Restaurants ###

puts 'Creating Restaurants...'

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

Restaurant.create(
  name: "Phayathai",
  category: "Thai",
  address: "1235 Guy St, Montreal, QC H3H 2K5",
  district: "Concordia"
  )

Restaurant.create(
  name: "Kazu",
  category: "Japanese",
  address: "1862 Saint-Catherine St W, Montreal, QC H3H 1M1",
  district: "Concordia"
  )

Restaurant.create(
  name: "Otto Yakitori Izakaya",
  category: "Japanese",
  address: "1441 St Mathieu St, Montreal, QC H3H",
  district: "Concordia"
  )

Restaurant.create(
  name: "Bok",
  category: "Korean",
  address: "5461 Sherbrooke St W, Montreal, QC H4A 1W1",
  district: "Monkland Village"
  )
