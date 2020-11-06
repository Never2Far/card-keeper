require 'faker'


# Add Users

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


#Create User's Collections

User.all.each do |user|

    Sport.all.each do |sport|

    

    Collection.create(name: "#{user.username}\'s #{sport.name} Card Collection", user_id: user.id, sport_id: sport.id)
    
    end
end


#Create Players

200.times do
    Player.create(name: Faker::Name.unique.name)
end


#Create Contracts


400.times do
    Contract.create(player_id: Faker::Number.within(range: 1..(Player.count)),
                    team_id: Faker::Number.within(range: 1..(Team.count))
                )
end

Contract.all.each do |contract|
    sport = contract.team.sport
    contract.update(
        position_id: Faker::Number.within(range: (sport.positions.first.id)..(sport.positions.last.id))
    )
end

#Create Cards

Collection.all.each do |collection|
    10.times do
        contract = Contract.find(Faker::Number.within(range: 1..Contract.all.count))

        Card.create(
        collection_id: collection.id, 
        player_id: contract.player_id,
        condition: "mint",
        estimated_value: Faker::Number.decimal(l_digits: 2),
        special_attribute: "rookie",
        contract_id: contract.id,
        user_id: collection.user_id,
        sport_id: collection.sport.id,
        position_id: contract.position_id,
        team_id: contract.team_id)
        

        contract = Contract.find(Faker::Number.within(range: 1..Contract.all.count))

        Card.create(
        collection_id: collection.id, 
        player_id: contract.player_id,
        condition: "good",
        estimated_value: Faker::Number.decimal(l_digits: 2),
        special_attribute: "signed",
        contract_id: contract.id,
        user_id: collection.user_id,
        sport_id: collection.sport.id,
        position_id: contract.position_id,
        team_id: contract.team_id)
    end
end