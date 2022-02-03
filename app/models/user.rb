# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable

  has_many :complaints, dependent: :nullify
  has_one_attached :avatar

  enum :role, { citizen: 0, employee: 1, director: 2, admin: 3 }
end
