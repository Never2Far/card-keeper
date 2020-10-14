class Contract < ActiveRecord::Base
    belongs_to :team
    belongs_to :player
    belongs_to :position
    has_many :cards
    has_many :collections, through: :cards
end