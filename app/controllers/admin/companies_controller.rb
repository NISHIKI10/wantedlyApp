class Admin::CompaniesController < ApplicationController
  before_action :admin_company
 
  def index
    @companies = Company.all.order(created_at: :desc)
  end
  
  def destroy
    Company.find(params[:id]).destroy
    redirect_to admin_companies_path
  end
  
  private
    def admin_company
      redirect_to(root_url) unless current_company.admin?
    end
end
