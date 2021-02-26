class RepairBillsController < ApplicationController
layout false, :except => :show


    def index 
        @repair_bills = RepairBill.all
    end

    def new 
        #binding.pry
        @repair_bill = RepairBill.new
        @repair_bill.build_technician
    end

    def edit 
        @repair_bill = RepairBill.find(params[:id])
    end

    def update 
        repair_bill = RepairBill.find(params[:id])
        repair_bill.update(repair_bill_params)
        redirect_to repair_bill_path(repair_bill)
    end

    def destroy 
        repair_bill = RepairBill.find(params[:id])
        repair_bill.destroy
        redirect_to '/repair_bills'
    end

    def show
        @repair_bill = RepairBill.find(params[:id])
    end

    def create 
        @repair_bill = RepairBill.new(repair_bill_params) 
        if @repair_bill.save 
            redirect_to repair_bill_path(@repair_bill) 
        else
            render :new
        end
    end
end

private 

def repair_bill_params 
    params.require(:repair_bill).permit(:brand, :model, :year, :style, :acoustic, :electric, :reason_for_repair, technician_attributes: [:name])
end
