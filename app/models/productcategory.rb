class Productcategory < ApplicationRecord
    has_many :products
    validates_presence_of :name
    
end
