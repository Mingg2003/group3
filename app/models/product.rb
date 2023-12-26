class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :productcategory
  has_many :order
  has_many :invoices
  has_many :recommendation 
  validates_presence_of :name, :description, :price, :ingredient, :productcategory, :supplier, :quantity, :available
  validates_numericality_of :price, :quantity
  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      all
    end
    end
end
