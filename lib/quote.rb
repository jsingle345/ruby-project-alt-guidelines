class Quote < ActiveRecord::Base
    #belongs_to :users
    has_many :favorites
    has_many :users, through: :favorites
end