class AddTeamIdColumnToCards < ActiveRecord::Migration[5.2]

    def change
        add_column :cards, :team_id, :integer
        
    end
    
    end