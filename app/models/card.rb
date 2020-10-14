class Card < ActiveRecord::Base
    belongs_to :contract
    belongs_to :user
    belongs_to :sport
    belongs_to :collection
    belongs_to :player
    belongs_to :team
    belongs_to :position
end


