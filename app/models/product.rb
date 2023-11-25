class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :productcategory
  
end
