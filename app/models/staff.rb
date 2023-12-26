class Staff < ApplicationRecord
  belongs_to :shift
  validates_presence_of :name, :staffid, :phone, :performance, :salary, :promotion
  validates_numericality_of :staffid, :phone, :salary
  validates_uniqueness_of :staffid
end
