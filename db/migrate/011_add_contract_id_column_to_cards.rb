class AddContractIdColumnToCards < ActiveRecord::Migration[5.2]

def change
    add_column :cards, :contract_id, :integer
end

end