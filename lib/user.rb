class User < ActiveRecord::Base
    has_many :quotes
    has_many :favorites, :through :quotes
end