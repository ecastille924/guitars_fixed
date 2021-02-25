class RepairBill < ApplicationRecord
    belongs_to :technician
    validates :brand, :model, :style, :reason_for_repair, presence:true

    def year_brand_model 
        "#{self.year} #{self.brand} #{self.model}"
    end
end
