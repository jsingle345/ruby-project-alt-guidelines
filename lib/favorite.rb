class Favorite < ActiveRecord::Base
    belongs_to :quotes
    belongs_to :users
end