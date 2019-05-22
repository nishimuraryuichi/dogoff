class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:sex,:age,:nickname])
  end

  def set_dogs
    @user = User.all
  end
end
