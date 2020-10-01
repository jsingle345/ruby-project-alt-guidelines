class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :quotation
      t.string :author
      t.string :mood

      #t.integer :user_id
      #t.timestamps
    end
  end
end
