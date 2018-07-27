require 'faker'

10.times do
  city = City.create(city_name: Faker::Nation.capital_city)
end

15.times do
    dog = Dog.create(name: Faker::PrincessBride.character, city_id: rand(1..10))
end

15.times do
    dogsitter = Dogsitter.create(name: Faker::StarWars.specie, city_id: rand(1..10))
end

40.times do
    stroll = Stroll.create(title: Faker::StarWars.droid, dog_id: rand(1..15), dogsitter_id: rand(1..15) )
end
