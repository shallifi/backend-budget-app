class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :food
      t.string :gasoline
      t.string :savings
      t.string :investments
      t.string :miscellanous
      t.string :description
      t.integer :expense_amount

      t.timestamps
    end
  end
end
