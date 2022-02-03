# frozen_string_literal: true

module DashboardHelper
  def total_complaints_by_status_per_user
    @total_complaints_by_status_per_user ||= current_user.complaints.group(:status).size
  end

  def number_of_created_complaints
    total_complaints_by_status_per_user['created'] || 0
  end

  def number_of_in_process_complaints
    total_complaints_by_status_per_user['in_process'] || 0
  end

  def number_of_attended_complaints
    attended = total_complaints_by_status_per_user['attended'] || 0
    attended_by_program = total_complaints_by_status_per_user['attended_by_program'] || 0

    attended + attended_by_program
  end

  def number_of_rejected_complaints
    total_complaints_by_status_per_user['rejected'] || 0
  end
end
