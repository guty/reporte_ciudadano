# frozen_string_literal: true

class Complaint < ApplicationRecord
  belongs_to :complaintable, polymorphic: true
end
