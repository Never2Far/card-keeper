class Team < ActiveRecord::Base
    include Slugifiable::InstanceMethods
    # extend Slugifiable::ClassMethods
    belongs_to :sport
    has_many :contracts
    has_many :players, through: :contracts
    has_many :cards, through: :contracts
    has_many :positions, through: :sport
    has_many :collections, through: :cards

    def self.find_by_slug(slug)
        name = slug.gsub("-", " ")
        self.all.each do |obj|
            if obj.name.downcase.strip.gsub(/[^a-zA-Z0-9. ]/, "") == name
                return obj
            end
        end
    end
end