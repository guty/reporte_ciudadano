# frozen_string_literal: true

class DashboardsController < AuthorizationsController
  def index
    return @complaints = current_user.complaints.all if current_user.citizen?

    dependency_categories = Category.where(dependency: current_user.dependency)
    @complaints = Complaint.joins(:category).where(categories: dependency_categories)
  end
end
