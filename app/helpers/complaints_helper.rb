# frozen_string_literal: true

module ComplaintsHelper
  def category_options_for(categories)
    options_from_collection_for_select(categories, 'id', 'name')
  end
end
