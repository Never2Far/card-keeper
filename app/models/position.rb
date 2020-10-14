class Position < ActiveRecord::Base
    belongs_to :sport
    has_many :contracts
    has_many :players, through: :contracts
    has_many :teams, through: :contracts
    # belongs_to :team
    # has_many :players, through: :teams
    has_many :cards, through: :players
end