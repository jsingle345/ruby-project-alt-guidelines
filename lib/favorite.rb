class Favorite < ActiveRecord::Base
    has_many :quotes
    belongs_to :users
end