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