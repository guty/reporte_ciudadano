# frozen_string_literal: true

class Complaint < ApplicationRecord
  include AASM

  validates :subject, :address, :neighbourhood, :town, presence: true
  belongs_to :user
  belongs_to :category
  has_many_attached :images
  has_many_attached :evidences
  delegate :dependency, to: :category

  enum :status,
       { created: 'created',
         in_process: 'in_process',
         attended: 'attended',
         attended_by_program: 'attended_by_program',
         rejected: 'rejected' }

  aasm column: :status, enum: true do
    state :created, initial: true
    state :in_process, :attended, :attended_by_program, :rejected

    event :process do
      transitions from: :created, to: :in_process
    end

    event :attend do
      transitions from: :in_process, to: :attended
    end

    event :attend_program do
      transitions from: :in_process, to: :attended_by_program
    end

    event :reject do
      transitions from: :created, to: :rejected
    end
  end
end
