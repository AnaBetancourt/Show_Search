class ApplicationController < ActionController::Base
    include ApplicationHelper
    before_action :restrict_access, except: [:home]
    helper_method :current_user
    helper_method :logged_in?

    def home
    end

    private

    def restrict_access
        redirect_to "/" unless logged_in?
    end

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if logged_in?
    end

    
end
