class Client < ActiveRecord::Base 
    has_many :dogs
    has_many :walker, through: :dogs
end