# frozen_string_literal: true

class DashboardsController < AuthorizationsController
  def index
    @complaints = find_complaints
  end

  private

  def find_complaints
    return current_user.complaints.all if current_user.citizen?

    Complaint.where(category_id: current_user.dependency.categories.pluck(:id))
  end
end
