# frozen_string_literal: true

class Dependency < ApplicationRecord
  has_many :categories, dependent: :nullify
  has_many :users, dependent: :nullify
end
