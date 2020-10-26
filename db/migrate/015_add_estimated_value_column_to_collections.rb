class AddEstimatedValueColumnToCollections < ActiveRecord::Migration[5.2]
    def change
    add_column :collections, :estimated_value, :float
    end
end