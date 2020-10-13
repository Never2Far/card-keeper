class Player < ActiveRecord::Base
has_many :cards, through: :collections
# has_many :collections, through: :cards
has_many :cards
has_many :contracts
has_many :teams, through: :contracts
end