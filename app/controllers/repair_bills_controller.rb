class RepairBillsController < ApplicationController
#layout false, :except => :show


    def index 
        @repair_bills = RepairBill.all
        if current_user
            @repair_bills = current_user.repair_bills.all
        else 
            @repair_bills = nil 
        end
    end

    def new 
        #binding.pry
        @repair_bill = RepairBill.new
        @repair_bill.build_technician
    end

    def edit 
        @repair_bill = RepairBill.find(params[:id])
        if @repair_bill.user == current_user 
            render :edit
        else 
            redirect_to '/repair_bills'
        end
    end

    def update 
        repair_bill = RepairBill.find(params[:id])
        repair_bill.update(repair_bill_params)
        redirect_to repair_bill_path(repair_bill)
    end

    def destroy 
        repair_bill = RepairBill.find(params[:id])
        if repair_bill.user == current_user
            repair_bill.destroy
            redirect_to '/repair_bills'
        else
           redirect_to '/repair_bills'
        end
    end

    def show
        @repair_bill = RepairBill.find(params[:id])
    end

    def create 
        @repair_bill = RepairBill.new(repair_bill_params.merge(user_id: current_user.id)) 
        if @repair_bill.save 
            redirect_to repair_bill_path(@repair_bill) 
        else
            render :new
        end
    end

    def ordered_by_year
        @repair_bills = RepairBill.all.ordered_by_year
    end

end


private 

def repair_bill_params 
    params.require(:repair_bill).permit(:user_id, :brand, :model, :year, :style, :acoustic, :electric, :reason_for_repair, :repair_completed, :technician_id, technician_attributes: [:name])
end
