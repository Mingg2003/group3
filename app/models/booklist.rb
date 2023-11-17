class Booklist < ApplicationRecord
  belongs_to :type
  validates_presence_of :tilte, :author, :publisher
  validates_uniqueness_of :tilte
  
end
