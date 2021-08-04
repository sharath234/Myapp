class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up,
          keys: [:username, :email, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:sign_in,
          keys: [:login, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:account_update,
          keys: [:username, :email, :password_confirmation, :current_password])
      end

      def after_sign_in_path_for(resource)
        resource.is_admin ? members_url : member_path(@user)
      end
end
