class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :name
      t.string :Priority
      t.boolean :Completed
      t.belongs_to :TaskList

      t.timestamps
    end
    add_index :tasks, :TaskList_id
  end
end
