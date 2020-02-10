class Admin::UsersController < ApplicationController
  before_action :admin_user
  def index
    @users = User.all.order(created_at: :desc)
  end
  
  def destroy
    User.find(params[:id]).destroy
    redirect_to admin_users_path
  end

  private
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
