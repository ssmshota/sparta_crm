class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

#下記以降を追加
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:given_name])
# 下記を1行追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image_url])
    devise_parameter_sanitizer.permit(:account_update, keys: [:family_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:given_name])
# 下記を1行追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:image_url])
  end
end
