class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.integer :user_id
      t.text :password

      t.timestamps
    end
  end
end
