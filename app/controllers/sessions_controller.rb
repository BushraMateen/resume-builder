class SessionsController < ApplicationController
  
    def new
    end
  
    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            log_in(user)
            redirect_to(root_path)
        else
            flash.now[:danger] = 'Invalid email/password combination'
            #render('new')
            redirect_to(signup_url)
        end
    end
  
    def destroy
        log_out
        redirect_to(root_url)
    end

end