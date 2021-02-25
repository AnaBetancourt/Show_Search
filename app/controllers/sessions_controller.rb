class SessionsController < ApplicationController
    skip_before_action :restrict_access, only: [:new, :create]

    def new
    end
    
    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:message] = "Invalid username or password. Please try again."
            redirect_to login_path
        end
    end
    
    def destroy
        session.clear
        redirect_to root_path
    end

end