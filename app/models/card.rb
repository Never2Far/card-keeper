class Card < ActiveRecord::Base
belongs_to :user, through: :collection
belongs_to :collection
belongs_to :player
belongs_to :team, through: :player
belongs_to :sport, through: :team
belongs_to :contract, through: :player
end