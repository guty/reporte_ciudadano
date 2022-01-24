# frozen_string_literal: true

json.array! @complaints, partial: "complaints/complaint", as: :complaint
