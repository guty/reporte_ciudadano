# frozen_string_literal: true

class Dependency < ApplicationRecord
  has_many :categories, dependent: :nullify
end
