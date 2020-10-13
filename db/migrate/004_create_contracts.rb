class CreateContracts < ActiveRecord::Migration[5.2]
    def change
        create_table :contracts do |t|
            t.integer :team_id
            t.string :position
            t.integer :player_id
        end
    end
end