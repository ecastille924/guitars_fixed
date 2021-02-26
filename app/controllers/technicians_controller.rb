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

  def show
    @technician = Technician.find(params[:id])
  end

  def index
    @technicians = Technician.all 
  end
end

private 

def technician_params 
  params.require(:technician).permit(:name, :specialty)
end
