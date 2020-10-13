class CreateCards < ActiveRecord::Migration[5.2]
    def change
        create_table :cards do |t|
            t.integer :collection_id
            t.string :position
            t.integer :player_id
            t.string :condition
            t.float :estimated_value
            t.string :special_attribute
        end
    end
end