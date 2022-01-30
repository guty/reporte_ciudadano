# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable
  enum :role, { citizen: 0, employee: 1, director: 2, admin: 3 }
end
