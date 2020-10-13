class Collection < ActiveRecord::Base
belongs_to :user
has_one :sport
has_many :cards
has_many :players, through: :cards
has_many :teams, through: :players
end