class RemoveColumnFromExpenditures < ActiveRecord::Migration[7.0]
  def change
  
      remove_column :expenditures, :description, :string
    end
end
