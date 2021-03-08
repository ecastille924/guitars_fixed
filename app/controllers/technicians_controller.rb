class TechniciansController < ApplicationController
  def new
    @technician = Technician.new 
    
  end
  
  def create
    @technician = Technician.new(technician_params)
    if @technician.save 
      redirect_to technicians_path(@technician)
    else 
      render :new 
    end
  end


  def index
    @technicians = Technician.all 
  end

  def top_tech 
    @technician = Technician.all.sort_by{|technician| technician.repair_bills.count}.last
  end

  def show
    @technician = Technician.find(params[:id])
  end
  
end

private 

def technician_params 
  params.require(:technician).permit(:name, :specialty)
end


