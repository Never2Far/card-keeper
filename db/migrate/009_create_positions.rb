class CreatePositions < ActiveRecord::Migration[5.2]
    def change
        create_table :positions do |t|
            t.string :name
            t.integer :sport_id
        end
    end
end