class Collection < ActiveRecord::Base
    include Slugifiable::InstanceMethods
    # extend Slugifiable::ClassMethods
    belongs_to :user
    belongs_to :sport
    has_many :cards
    has_many :contracts, through: :cards
    has_many :players, through: :cards
    has_many :teams, through: :cards
    has_many :positions, through: :cards

    def getValue
        total = 0.00
        self.cards.each do |card|
            if card.estimated_value != nil
            total += card.estimated_value
            end
        end
        total
    end
end