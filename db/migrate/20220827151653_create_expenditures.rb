class CreateExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :expenditures do |t|
      t.string :type_of_expense
      t.string :description

      t.timestamps
    end
  end
end
