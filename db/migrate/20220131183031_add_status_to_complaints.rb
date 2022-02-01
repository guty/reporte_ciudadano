class AddStatusToComplaints < ActiveRecord::Migration[7.0]
  def change
    add_column :complaints, :status, :string, null: false, default: 'created'
  end
end
