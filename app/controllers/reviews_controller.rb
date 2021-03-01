class ReviewsController < ApplicationController
    respond_to :html, :xml, :json

    def new 
        @technician = Technician.find(params[:technician_id])
        @review = @technician.reviews.build
        respond_with(@review)
    end

    def create
        @technician = Technician.find(params[:technician_id])
        @review = @technician.reviews.build(params[:review]) 
        if @review.save 
            redirect_to '/technicians'
        else 
            render :new
        end
    end
end

private 

def review_params
    params.require(:review).permit(:content, :technician_id)
end