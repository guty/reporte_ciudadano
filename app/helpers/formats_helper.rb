# frozen_string_literal: true

module FormatsHelper
  def date_format(date)
    l(date, format: :short)
  end

  def status_name(status)
    Complaint.human_attribute_name("status.#{status}")
  end
end
