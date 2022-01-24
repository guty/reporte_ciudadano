# frozen_string_literal: true

class User < ApplicationRecord
  has_many :complaints, as: :complaintable

  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable
  enum :role, { guest: 0, citizen: 1, official: 2, admin: 3 }
end
