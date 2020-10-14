class ChangePositionColumnFromContractsToPositionId < ActiveRecord::Migration[5.2]

def change
    remove_column :contracts, :position
    add_column :contracts, :position_id, :integer
end


end