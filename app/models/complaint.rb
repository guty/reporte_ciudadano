class Complaint < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :dependency
end
