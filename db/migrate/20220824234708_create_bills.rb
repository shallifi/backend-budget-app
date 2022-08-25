class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :company_name
      t.integer :min_payment
      t.integer :payoff_amount
      t.integer :payment

      t.timestamps
    end
  end
end
