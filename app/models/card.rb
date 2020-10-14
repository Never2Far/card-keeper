class Card < ActiveRecord::Base
    
    belongs_to :contract
    belongs_to :user
    belongs_to :sport
    belongs_to :collection


belongs_to :player
belongs_to :team
belongs_to :position

# # belongs_to :contract
# has_many :contract, :to => :player, :allow_nil => true
# belongs_to :team
# belongs_to :sport
# belongs_to :contract
end


# belongs_to :user, through: :collection
# belongs_to :collection
# belongs_to :player
# belongs_to :team, through: :player
# belongs_to :sport, through: :team
# belongs_to :contract, through: :player