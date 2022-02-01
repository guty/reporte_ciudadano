class Complaint < ApplicationRecord
  validates_presence_of :subject, :address, :neighbourhood, :town
  belongs_to :user
  belongs_to :category

  enum :status,
       { created: 'created', in_proccess: 'in_proccess', attended: 'attended', attended_by_program: 'attended_by_program',
         rejected: 'rejected' }
end
