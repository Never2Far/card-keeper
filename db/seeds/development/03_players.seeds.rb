require 'faker'


200.times do
    Player.create(name: Faker::Name.unique.name)
end