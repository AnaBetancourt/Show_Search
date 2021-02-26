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
            flash[:notice] = "User successfully updated."
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user.delete
        redirect_to root_route
    end
    
    private

    def user_params
        params.require(:user).permit(:name, :username, :password)
    end

    def set_user
        @user = User.find(params[:id])
    end

end
