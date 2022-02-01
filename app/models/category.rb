# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :complaints, dependent: :nullify
  belongs_to :dependency
end
