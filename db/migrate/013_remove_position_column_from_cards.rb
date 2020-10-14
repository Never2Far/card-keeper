class RemovePositionColumnFromCards < ActiveRecord::Migration[5.2]

    def change
        remove_column :cards, :position, :string
    end
    
    
    end