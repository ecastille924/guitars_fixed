class ReviewsController < ApplicationController

    def new 
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
    
        if @review.save
          redirect_to @review
        else
          render :new
        end
      end
end

private 

def review_params
    params.require(:review).permit(:content, :technician_id)
end