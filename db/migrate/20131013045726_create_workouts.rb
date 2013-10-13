class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :date
      t.integer :meters
      t.belongs_to :user

      t.timestamps
    end
    add_index :workouts, :user_id
  end
end
