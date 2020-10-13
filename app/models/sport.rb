class Sport < ActiveRecord::Base
has_many :collections, through: :users
has_many :teams
has_many :players, through: :teams
has_many :cards, through: :players
end