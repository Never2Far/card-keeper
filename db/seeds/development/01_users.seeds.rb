require 'faker'

User.create(
    name: "test",
    username: "test",
    email: "test@test.com",
    password: "test"
)


10.times do
    User.create(
        name: Faker::Name.unique.name, 
        username: Faker::Internet.unique.username,
        email: Faker::Internet.unique.email,
        password: Faker::Internet.password
    )
end

Faker::Name.unique.clear



User.all.each do |user|

    Sport.all.each do |sport|

    

    Collection.create(name: "#{user.username}\'s #{sport.name} Card Collection", user_id: user.id, sport_id: sport.id)
    
    end
end