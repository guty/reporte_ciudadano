# frozen_string_literal: true

module ApplicationHelper
  def user_full_name()
    "#{current_user.name} #{current_user.middle_name}"
  end
end
