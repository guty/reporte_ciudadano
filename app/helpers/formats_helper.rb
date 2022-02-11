# frozen_string_literal: true

module FormatsHelper
  def short_date_format(date)
    l(date, format: :short)
  end

  def format_id(id)
    format("%04d", id)
  end

  def role_name(role)
    User.human_attribute_name("role.#{role}")
  end
end
