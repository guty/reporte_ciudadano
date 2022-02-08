# frozen_string_literal: true

module DashboardHelper
  def number_of_created_complaints
    total_complaints_by_status["created"] || 0
  end

  def number_of_in_process_complaints
    total_complaints_by_status["in_process"] || 0
  end

  def number_of_attended_complaints
    attended = total_complaints_by_status["attended"] || 0
    attended_by_program = total_complaints_by_status["attended_by_program"] || 0

    attended + attended_by_program
  end

  def number_of_rejected_complaints
    total_complaints_by_status["rejected"] || 0
  end

  private

  def total_complaints_by_status
    return @total_complaints_by_status ||= current_user.complaints.group(:status).size if current_user.citizen?

    dep_categories = Category.where(dependency: current_user.dependency)
    @total_complaints_by_status ||= Complaint.joins(:category).where(categories: dep_categories).group(:status).size
  end
end
