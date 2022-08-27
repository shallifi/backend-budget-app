class CreateUserExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :user_expenditures do |t|
      t.integer :expense_amount
      t.string :description
      t.references :user, foreign_key: true, null: false
      t.references :expenditure, foreign_key: true, null: false
    end
  end
end
