class User < ActiveRecord::Base
has_secure_password

has_many :collections
has_many :cards, through: :collections
has_many :sports, through: :cards
has_many :teams, through: :cards
has_many :players, through: :cards

end