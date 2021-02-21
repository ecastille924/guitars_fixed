class RepairBillsController < ApplicationController
layout false, :except => :show


    def index 
        @repair_bills = RepairBill.all
    end

    def show
        @repair_bill = RepairBill.find(params[:id])
    end

end
