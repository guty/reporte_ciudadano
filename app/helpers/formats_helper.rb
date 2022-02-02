# frozen_string_literal: true

module FormatsHelper
  def date_format(date)
    l(date, format: :short)
  end

  def format_id(id)
    "%04d" % id
  end
end
