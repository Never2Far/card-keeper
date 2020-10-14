class Position < ActiveRecord::Base
    belongs_to :sport
    has_many :contracts
    has_many :players, through: :contracts
    has_many :teams, through: :contracts
    has_many :cards, through: :players
end