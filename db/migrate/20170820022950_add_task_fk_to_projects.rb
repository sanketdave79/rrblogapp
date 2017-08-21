class AddTaskFkToProjects < ActiveRecord::Migration[5.0]
  def change
    change_table :tasks do |t|
      t.references :projects, foreign_key: true
    end
  end
end
