400.times do
    Contract.create(player_id: Faker::Number.within(range: 1..(Player.count)),
                    team_id: Faker::Number.within(range: 1..(Team.count))
                    # position_id: Faker::Number.within(range: 1..10),
                )
end

Contract.all.each do |contract|
    sport = contract.team.sport
    contract.update(
        position_id: Faker::Number.within(range: sport.positions.first.id..sport.positions.last.id)
    )
end