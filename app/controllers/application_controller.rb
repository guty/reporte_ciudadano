# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  def after_sign_in_path_for(_resource)
    return :dashboards if current_user.citizen?

    :root
  end

  def after_sign_out_path_for(_scope)
    :root
  end
end
