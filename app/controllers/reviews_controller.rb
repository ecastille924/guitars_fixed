class ReviewsController < ApplicationController

  def index 
    #if params[:technician_id]
      #@reviews = Technician.find(params[:technician_id])
    #else
      @reviews = Review.all
    #end
  end

  def show 
    @review = Review.find(params[:id])
  end
  
  def new 
      @technician = Technician.find_by(id: params[:technician_id])
      @review = Review.new(technician_id: params[:technician_id])
      #@repair_bill.build_technician
  end

  def create
   # @technician = Technician.find(params[:technician_id])
    @review = Review.new(review_params.merge(user_id: current_user.id))
    #@review = @technician.review.build(params[:review_params])
    
    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end
     
end

private 

def review_params
    params.require(:review).permit(:content, :technician_id, :user_id)
end

