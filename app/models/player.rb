class Player < ActiveRecord::Base
# has_many :cards, through: :collections
# has_many :player_collections
has_many :contracts
has_many :cards, through: :contracts
has_many :collections, through: :cards

has_many :positions, through: :contracts
has_many :teams, through: :contracts




end