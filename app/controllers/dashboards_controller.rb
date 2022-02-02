# frozen_string_literal: true

class DashboardsController < AuthorizationsController
  def index
    @complaints = current_user.complaints.all
    @created = Complaint.where('status' => 'created').count
    @in_process = Complaint.where('status' => 'in_process').count
    @attended = Complaint.where('status' => %w[attended attended_by_program]).count
    @rejected = Complaint.where('status' => 'rejected').count
  end
end
