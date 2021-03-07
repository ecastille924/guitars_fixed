class ReviewsController < ApplicationController

  def index 
    #if params[:technician_id]
      #@reviews = Technician.find(params[:technician_id])
   # else
      @reviews = Review.all
    #end
  end

  def show 
    @review = Review.find(params[:id])
  end
  
  def new 
      @review = Review.new
  end

  def create
    @technician = Technician.find(params[:technician_id])
    @review = Review.new(review_params)
    
    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end

     
end

private 

def review_params
    params.require(:review).permit(:content, :technician_id)
end