class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password, :comment, :birthday)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :comment, :birthday])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :comment, :birthday])
  end
end
