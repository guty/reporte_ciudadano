# frozen_string_literal: true

module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]

    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up,
                                        keys: %i[name middle_name last_name address mobile activated_at])
    end

    def after_sign_up_path_for(_resource)
      :root
    end
  end
end
