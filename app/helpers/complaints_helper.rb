# frozen_string_literal: true

module ComplaintsHelper
  STATUSES_CSS = { created: "is-dark",
                   in_process: "is-warning",
                   attended: "is-info",
                   attended_by_program: "is-info",
                   rejected: "is-danger" }.freeze

  def category_options_for(categories)
    options_from_collection_for_select(categories, "id", "name")
  end

  def status_name(status)
    Complaint.human_attribute_name("status.#{status}")
  end

  def status_css(status)
    STATUSES_CSS[status.to_sym]
  end
end
