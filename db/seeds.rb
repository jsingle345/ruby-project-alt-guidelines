User.create(name: "Joshua")
User.create(name: "Katherine")
User.create(name: "Caleb")
User.create(name: "Donald")
User.create(name: "Katrina")


Quote.create(quotation: "All our dreams can come true, if we have the courage to pursue them.", author: "Walt Disney", mood: "Motivation")
Quote.create(quotation: "“The secret of getting ahead is getting started.", author: "Mark Twain", mood: "Motivation")
Quote.create(quotation: "I’ve missed more than 9,000 shots in my career. I’ve lost almost 300 games. 
                        26 times I’ve been trusted to take the game winning shot and missed. I’ve failed 
                        over and over and over again in my life and that is why I succeed".strip, author: "Michael Jordan", mood: "Motivation")
Quote.create(quotation: "Don’t limit yourself. Many people limit themselves to what they think they can do. 
                        You can go as far as your mind lets you. What you believe, remember, you can achieve.", author: "Mary Kay Ash", mood: "Motivation")
Quote.create(quotation: "It’s hard to beat a person who never gives up.", author: "Babe Ruth", mood: "Motivation")

Quote.create(quotation: "Death is not the opposite of life, but a part of it", author: "Haruki Murakami", mood: "Loss of loved one")
Quote.create(quotation: "We all die. The goal isn't to live forever, the goal is to create something that will", author: "Chuck Palahniuk", mood: "Loss of loved one")
Quote.create(quotation: "That it will never come again is what makes life so sweet", author: "Emily Dickinson", mood: "Loss of loved one")
Quote.create(quotation: "It is not length of life, but depth of life.", author: "Ralph Waldo Emerson", mood: "Loss of loved one")
Quote.create(quotation: "No one is actually dead until the ripples they cause in the world die away.", author: "Terry Pratchett", mood: "Loss of loved one")

Quote.create(quotation: "The love we give away is the only love we keep.", author: "Elbert Hubbard", mood: "Love")
Quote.create(quotation: "In love the paradox occurs that two beings become one and yet remain two.", author: "Erich Fromm", mood: "Love")
Quote.create(quotation: "Every true and deep love is a sacrifice.", author: "Carl Jung", mood: "Love")
Quote.create(quotation: "My love is deep; the more I give to thee, the more I have, both are infinite.", author: "William Shakespeare", mood: "Love")
Quote.create(quotation: "What we have once enjoyed we can never lose. All that we love deeply becomes a part of us.", author: "Helen Keller", mood: "Love")

Favorite.create(name: "Lost a competition", user_id: 1, quote_id: 3)   #, situation: "Losing"
Favorite.create(name: "Uncle Ed's Funeral", user_id: 4, quote_id: 7)   #, situation: "Funeral"
Favorite.create(name: "Cousin Breonna's Wedding", user_id: 5, quote_id: 12)  #, situation: "Wedding"
Favorite.create(name: "On a date", user_id: 3, quote_id: 13)                 #, situation: "Flirting"
Favorite.create(name: "LLC Launch Party", user_id: 2, quote_id: 4)           #, situation: "Starting a business"
