class RepairBillsController < ApplicationController

    def index 
        @repair_bills = RepairBill.all
    end

end
