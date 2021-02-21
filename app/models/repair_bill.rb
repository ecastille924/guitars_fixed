class RepairBill < ApplicationRecord
    def show
        @repair_bill = RepairBill.find(params[:id])
    end
end
