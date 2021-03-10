class RepairBill < ApplicationRecord
    belongs_to :technician
    belongs_to :user
    validates :brand, :model, :style, :reason_for_repair, presence:true
    #accepts_nested_attributes_for :technician

    def year_brand_model 
        "#{self.year} #{self.brand} #{self.model}"
    end

    def technician_attributes=(attr)
        self.technician = Technician.find_by(name: attr[:name])
    end
end
