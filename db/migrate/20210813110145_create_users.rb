class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :address
      t.text :note
      t.integer :status

      t.timestamps
    end
    add_index :users, :email
    add_index :users, :status
  end
end
