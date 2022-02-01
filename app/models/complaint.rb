# frozen_string_literal: true

class Complaint < ApplicationRecord
  validates :subject, :address, :neighbourhood, :town, presence: true
  belongs_to :user
  belongs_to :category

  enum :status,
       { created: "created",
         in_proccess: "in_proccess",
         attended: "attended",
         attended_by_program: "attended_by_program",
         rejected: "rejected" }
end