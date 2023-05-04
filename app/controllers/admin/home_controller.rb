class Admin::HomeController < ApplicationController
    before_action :authenticate_user!
    before_action :check_admin
    before_action :require_admin    

    def index
      @blogs = Blog.all
    end

    def logged_in_users
      @logged_in_users = User.where("current_sign_in_at IS NOT NULL")
    end

    def require_admin
      unless current_user && current_user.is_admin?
          flash[:error] = "You must be an admin to access this"
          redirect_to root_path
      end
    end

    private

    def check_admin
      redirect_to root_path unless current_user.is_admin?
    end
  end