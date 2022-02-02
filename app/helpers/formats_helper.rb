# frozen_string_literal: true

module FormatsHelper
  def date_format(date)
    date.strftime('%d/%B/%Y %l:%M %p')
  end
end
