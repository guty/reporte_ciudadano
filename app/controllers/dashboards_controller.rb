# frozen_string_literal: true

class DashboardsController < AuthorizationsController
  def index
    @complaints = current_user.complaints.all
  end
end
