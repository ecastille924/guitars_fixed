class Technician < ApplicationRecord
    has_many :repair_bills
    has_many :users, through: :repair_bills
end
