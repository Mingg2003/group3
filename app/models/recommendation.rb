class Recommendation < ApplicationRecord
  belongs_to :product
  validates_presence_of :productid, :price, :quantity, :sale, :trending
  validates_numericality_of :price, :quantity
  validates_uniqueness_of :productid
end
