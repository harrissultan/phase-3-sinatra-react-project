class Dog < ActiveRecord::Base
    belongs_to :client
    belongs_to :walker
end