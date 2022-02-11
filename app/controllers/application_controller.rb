# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  def after_sign_in_path_for(_resource)
    return :dashboards unless current_user.admin?

    users_index_url
  end

  def after_sign_out_path_for(_scope)
    :root
  end
end
