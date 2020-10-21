class Player < ActiveRecord::Base
    include Slugifiable::InstanceMethods
    # extend Slugifiable::ClassMethods
    has_many :contracts
    has_many :cards, through: :contracts
    has_many :collections, through: :cards
    has_many :positions, through: :contracts
    has_many :teams, through: :contracts

    def self.find_by_slug(slug)
        name = slug.gsub("-", " ")
        self.all.each do |obj|
            if obj.name.downcase.strip.gsub(/[^a-zA-Z0-9. ]/, "") == name
                return obj
            end
        end
    end
end