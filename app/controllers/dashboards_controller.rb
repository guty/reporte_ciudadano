# frozen_string_literal: true

class DashboardsController < AuthorizationsController
  def index
    return @complaints = current_user.complaints.all if current_user.citizen?

    @complaints = Complaint.where(category_id: current_user.dependency.categories.pluck(:id))
  end
end
