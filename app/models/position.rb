class Position < ActiveRecord::Base
    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
    belongs_to :sport
    has_many :contracts
    has_many :players, through: :contracts
    has_many :teams, through: :contracts
    has_many :cards, through: :players
end