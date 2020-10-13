class User < ActiveRecord::Base
has_secure_password

has_many :collections
has_many :sports, through: :collections
has_many :teams, through: :sports
has_many :players, through: :teams
has_many :cards, through: :players
end