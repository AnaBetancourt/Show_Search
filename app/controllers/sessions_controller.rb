class SessionsController < ApplicationController
    skip_before_action :restrict_access, only: [:new, :create, :omniauth]

    def new
    end
    
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:notice] = "Invalid email or password. Please try again."
            redirect_to login_path
        end
    end

    def omniauth
        user = User.create_from_omniauth(auth)

        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash[:notice] = user.errors.full_messages.join("")
            redirect_to root_path
        end
    end
    
    def destroy
        session.clear
        redirect_to root_path
    end

    private

    def auth
        request.env['omniauth.auth']
    end

end