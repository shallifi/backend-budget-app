class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :name_of_goal
      t.integer :goal_amount

      t.timestamps
    end
  end
end
