class UsersController < ApplicationController
    before_action :set_user, except: [:new, :create]
    skip_before_action :restrict_access, only: [:new, :create]
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            flash[:message] = "User was successfully created."
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @user.update(user_params)
            flash[:message] = "User was successfully updated."
            redirect_to user_path(@user)
        else
            render :edit
        end
    end
    
    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end

end
