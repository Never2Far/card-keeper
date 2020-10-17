class Team < ActiveRecord::Base
    include Slugifiable
    belongs_to :sport
    has_many :contracts
    has_many :players, through: :contracts
    has_many :cards, through: :contracts
    has_many :positions, through: :sport
    has_many :collections, through: :cards
end