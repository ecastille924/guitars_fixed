class Technician < ApplicationRecord
    has_many :repair_bills
    has_many :users, through: :repair_bills
    has_many :reviews
    #accepts_nested_attributes_for :reviews

    def self.most_repairs 
        self.repair_bills.order(count: :desc).limit(1)
    end
end
