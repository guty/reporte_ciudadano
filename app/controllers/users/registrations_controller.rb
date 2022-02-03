# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
    before_action :configure_account_update_params, only: [:update]

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up,
                                        keys: %i[name middle_name last_name address mobile avatar activated_at])
    end

    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update,
                                        keys: %i[name middle_name last_name address mobile avatar activated_at])
    end

    def after_sign_up_path_for(_resource)
      :root
    end

    def after_update_path_for(_resource)
      :edit_user_registration
    end
  end
end
