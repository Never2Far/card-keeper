class Sport < ActiveRecord::Base
    include Slugifiable::InstanceMethods
    # extend Slugifiable::ClassMethods
    has_many :collections
    has_many :users, through: :collections
    has_many :teams
    has_many :players, through: :teams
    has_many :cards, through: :collections
    has_many :positions

    def self.find_by_slug(slug)
        name = slug.gsub("-", " ")
        self.all.each do |obj|
            if obj.name.downcase.strip.gsub(/[^a-zA-Z0-9. ]/, "") == name
                return obj
            end
        end
    end
end