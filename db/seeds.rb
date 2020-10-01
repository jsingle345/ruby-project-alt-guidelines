User.create(name: "Joshua")
User.create(name: "Katherine")
User.create(name: "Caleb")
User.create(name: "Donald")
User.create(name: "Katrina")

Quote.create(quotation: "Life is a box of Chocolate", author: "Forest Gump")
Quote.create(quotation: "It is what it is...", author: "Unknown")
Quote.create(quotation: "You don't work you don't eat", author: "Momma Singleton")
Quote.create(quotation: "Two ways to every coin", author: "Unknown")

Favorite.create(name: "Motivation", 1, )

create_table :favorites do |t|
    t.string :name
    t.integer :user_id
    t.integer :quote_id
    t.string :mood
    t.timestamps
  end