# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  {
    name: "Beaver Stadium",
    image: "beaver_stadium.jpg",
    country: "us",
    state: "State College"
  }, 
  {
    name: "Emirates Stadium",
    image: "emirates_stadium.jpg",
    country: "England",
    state: "Highbury"
  },
  {
    name: "King Power Stadium",
    image: "king_power_stadium.jpg",
    country: "England",
    state: "Leicester"
  },
  {
    name: "Watford Arena Stadium",
    image: "watford_arena_stadium.jpg",
    country: "England",
    state: "Watford"
  },
  {
    name: "Anfield Stadium",
    image: "anfield_stadium.jpg",
    country: "England",
    state: "Liverpool"
  },
  {
    name: "St Mary's Stadium Stadium",
    image: "st_mary_stadium.jpg",
    country: "England",
    state: "Southampton"
  }
    ].each do |stadium|
  
  Stadium.find_or_create_by(name: stadium[:name]) do |s|
    s.name = stadium[:name]
    s.image = stadium[:image]
    s.country = stadium[:country]
    s.state = stadium[:state]
  end

end