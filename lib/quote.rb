class Quote < ActiveRecord::Base
    belongs_to :users
    belongs_to :favorites
end