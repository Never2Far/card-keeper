class Collection < ActiveRecord::Base
belongs_to :user
belongs_to :sport
has_many :cards
has_many :players, through: :cards
has_many :teams, through: :players
end