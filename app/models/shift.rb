class Shift < ApplicationRecord
    has_many :staff
    validates_presence_of :shift
end
