class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :url
      t.string :facts
      t.string :pics_repo
      t.string :api_repo

      t.timestamps
    end
  end
end
