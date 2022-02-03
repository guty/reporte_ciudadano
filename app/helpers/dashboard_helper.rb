# frozen_string_literal: true

module DashboardHelper
  def complaints_created
    current_user.complaints.created.count
  end

  def complaints_in_process
    current_user.complaints.in_process.count
  end

  def complaints_attended
    current_user.complaints.attended.count + current_user.complaints.attended_by_program.count
  end

  def complaints_rejected
    current_user.complaints.rejected.count
  end
end
