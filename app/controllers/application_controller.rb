class ApplicationController < ActionController::Base
  before_action :configue_parmitted_permeters, if: :devise_vontroller?
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer .permit(:sign_up, keys:[:name])
  end
end
