class Supplier < ApplicationRecord
    has_many :products
    validates_presence_of :name, :address, :phone, :email, :quantity
end
