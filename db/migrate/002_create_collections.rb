class CreateCollections < ActiveRecord::Migration[5.2]
    def change
        create_table :collections do |t|
            t.string :name
            t.integer :user_id
            t.integer :sport_id
        end
    end
end