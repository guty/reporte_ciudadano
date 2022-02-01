class RemoveDependencyFromComplaint < ActiveRecord::Migration[7.0]
  def change
    remove_reference :complaints, :dependency
  end
end
