class SessionsController < ApplicationController
    skip_before_action :restrict_access, only: [:new, :create, :omniauth]

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

    def omniauth
        user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.name = auth['info']['name']
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