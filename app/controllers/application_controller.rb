class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  # before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  #   def configure_permitted_parameters
  #     # sign_inのときに、usernameも許可する
  #     devise_parameter_sanitizer.for(:sign_in) << :user_name
  #     # sign_upのときに、usernameも許可する
  #     devise_parameter_sanitizer.for(:sign_up) << :user_name
  #     #  account_updateのときに、usernameも許可する
  #     devise_parameter_sanitizer.for(:account_update) << :user_name
  #   end
end
