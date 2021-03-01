class Technician < ApplicationRecord
    has_many :repair_bills
    has_many :users, through: :repair_bills
    has_many :reviews

    def self.most_repairs 
        self.repair_bills.order(count: :desc).limit(1)
    end
end
