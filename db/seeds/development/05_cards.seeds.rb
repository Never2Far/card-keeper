Collection.all.each do |collection|
    50.times do
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