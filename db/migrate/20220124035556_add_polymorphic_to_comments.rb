class AddPolymorphicToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :complaints, :complaint_type, :string
    add_column :complaints, :complaint_id, :integer
    remove_column :complaints, :user_id, :bigint
    remove_column :complaints, :category_id, :bigint
  end
end
