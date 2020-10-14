class Collection < ActiveRecord::Base
    belongs_to :user
    belongs_to :sport
    has_many :cards
    has_many :contracts, through: :cards
    has_many :players, through: :cards
    has_many :teams, through: :cards
    has_many :positions, through: :cards
end