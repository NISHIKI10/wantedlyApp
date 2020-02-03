class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:companyname])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:companyname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:companyname])
  end
end
