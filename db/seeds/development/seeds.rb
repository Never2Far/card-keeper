# require 'faker'

# User.create(
#     name: "Seth",
#     username: "sethman18",
#     email: "seth.j.near@gmail.com",
#     password: "Q73DB*Aa"
# )


# 50.times do
#     User.create(
#         name: Faker::Name.unique.name, 
#         username: Faker::Internet.unique.username,
#         email: Faker::Internet.unique.email,
#         password: Faker::Internet.password
#     )
# end

# Faker::Name.unique.clear

# 100.times do
#     Player.create(name: Faker::Name.unique.name)
# end


# # Sport.create(name: "Baseball")
# # Sport.create(name: "Basketball")
# # Sport.create(name: "Soccer")
# # Sport.create(name: "Soccer")
# # Sport.create(name: "Hockey")



# # 10.times do
# #     Team.create(name: Faker::Sports::Basketball.unique.team, sport_id: 1)
# #     Team.create(name: Faker::Sports::Football.unique.team, sport_id: 2)
# # end

# # 5.times do
# #     Position.create(name: Faker::Sports::Basketball.unique.position, sport_id: 1)
# #     Position.create(name: Faker::Sports::Football.unique.position, sport_id: 2)
# # end


# # User.all.each do |user|
# #     Collection.create(name: "#{user.username}\'s Basketball Card Collection", user_id: user.id, sport_id: 1)
# #     Collection.create(name: "#{user.username}\'s Soccer Card Collection", user_id: user.id, sport_id: 2)
# # end

# 200.times do
#     Contract.create(player_id: Faker::Number.within(range: 1..100),
#                     team_id: Faker::Number.within(range: 1..20),
#                     position_id: Faker::Number.within(range: 1..10),
#                 )
# end

# Collection.all.each do |collection|
#     50.times do
#         contract = Contract.find(Faker::Number.within(range: 1..200))

#         Card.create(
#         collection_id: collection.id, 
#         player_id: contract.player_id,
#         condition: "mint",
#         estimated_value: Faker::Number.decimal(l_digits: 2),
#         special_attribute: "rookie",
#         contract_id: contract.id,
#         user_id: collection.user_id,
#         sport_id: collection.sport.id,
#         position_id: contract.position_id,
#         team_id: contract.team_id)
        

#         contract = Contract.find(Faker::Number.within(range: 1..200))

#         Card.create(
#         collection_id: collection.id, 
#         player_id: contract.player_id,
#         condition: "good",
#         estimated_value: Faker::Number.decimal(l_digits: 2),
#         special_attribute: "signed",
#         contract_id: contract.id,
#         user_id: collection.user_id,
#         sport_id: collection.sport.id,
#         position_id: contract.position_id,
#         team_id: contract.team_id)
#     end
# end