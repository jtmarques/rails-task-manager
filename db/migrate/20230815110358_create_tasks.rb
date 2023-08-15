class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.boolean :completed, :default => false

      t.timestamps
    end
  end
end

# change_column :task, :complete, :boolean, :default => false
