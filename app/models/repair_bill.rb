class RepairBill < ApplicationRecord
    def year_brand_model 
        "#{self.year} #{self.brand} #{self.model}"
    end
end
