class Player < ActiveRecord::Base
    include Slugifiable
    has_many :contracts
    has_many :cards, through: :contracts
    has_many :collections, through: :cards
    has_many :positions, through: :contracts
    has_many :teams, through: :contracts
end