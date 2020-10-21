class Slugifiable
    module InstanceMethods
        def slug
            slug = self.name.downcase.gsub(/[^a-zA-Z0-9. ]/, "").gsub(" ", "-")
        end
    end

    module ClassMethods
        def self.find_by_slug(slug)
            name = slug.gsub("-", " ")
            self.all.each do |obj|
                if obj.name.downcase.strip.gsub(/[^a-zA-Z0-9. ]/, "") == name
                    return obj
                end
            end
        end
    end
end