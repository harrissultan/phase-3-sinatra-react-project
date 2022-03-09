class Walker < ActiveRecord::Base
    has_many :dogs
    has_many :clients, through: :dogs
end
