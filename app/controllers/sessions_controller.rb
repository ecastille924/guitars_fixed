def omniauth 
    user = User.create_from_omniauth(auth)

    if user.valid?
        session[:user.id] = user.id 
        redirect_to new_repair_bill_path
    else
        flash[:message] = user.errors.full_messages.join("")
        redirect_to repair_bill_path 
    end
end

private 

def auth 
    request.env['omniauth.auth']
end