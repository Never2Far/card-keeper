require 'faker'

User.create(
    name: "Seth",
    username: "seth1836",
    email: "seth.j.near@gmail.com",
    password: "Q73DB*Aa"
)

User.create(
    name: "Becca",
    username: "beccajae",
    email: "becca.j.near@gmail.com",
    password: "beccajae1"
)

User.create(
    name: "Scott",
    username: "scottSmells",
    email: "stinky@stinky.com",
    password: "i-smell"
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