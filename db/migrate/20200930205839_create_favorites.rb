class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :name
      t.integer :user_id
      t.integer :quote_id
      t.string :mood
      t.timestamps
    end
  end
end
