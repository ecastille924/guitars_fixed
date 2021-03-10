class ReviewsController < ApplicationController

  def index 
      @reviews = Review.all
  end

  def show 
    @review = Review.find(params[:id])
    @technician = Technician.find(params[:id])
  end
  
  def new 
      @technician = Technician.find_by(id: params[:technician_id])
      @review = Review.new(technician_id: params[:technician_id])
  end

  def create
    @review = Review.new(review_params.merge(user_id: current_user.id))
    
    if @review.save
      redirect_to technicians_path
    else
      render 'new'
    end
  end
     
end

private 

def review_params
    params.require(:review).permit(:content, :technician_id, :user_id)
end

