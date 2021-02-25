class SessionsController < ApplicationController
    skip_before_action :restrict_access, only: [:new, :create]

    def new
        @user = User.new
    end
    
    def create
        # binding.pry
        if @user = User.find_by(name: session_params[:username])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end
    
    def destroy
        session.clear
        redirect_to root_path
    end

    private

    def session_params
        params.require(:user).permit(:username, :password)
    end

end