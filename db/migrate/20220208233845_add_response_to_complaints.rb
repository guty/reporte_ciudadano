class AddResponseToComplaints < ActiveRecord::Migration[7.0]
  def change
    add_column :complaints, :response, :text
  end
end
