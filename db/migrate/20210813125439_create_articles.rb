class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :user_id
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :articles, :user_id
  end
end
