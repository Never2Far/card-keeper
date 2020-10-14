class AddUserIdAndSportIdAndPositionIdColumnsToCards < ActiveRecord::Migration[5.2]

    def change
        add_column :cards, :user_id, :integer
        add_column :cards, :sport_id, :integer
        add_column :cards, :position_id, :integer
    end
    
    end