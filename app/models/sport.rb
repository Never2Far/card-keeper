class Sport < ActiveRecord::Base
has_many :collections
has_many :users, through: :collections
has_many :teams
has_many :players, through: :teams
has_many :cards, through: :collections
has_many :positions
end