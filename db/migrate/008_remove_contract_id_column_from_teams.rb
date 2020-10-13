class RemoveContractIdColumnFromTeams < ActiveRecord::Migration[5.2]
def change
remove_column :teams, :contract_id
end
end