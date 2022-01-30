class AddNeededDataToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string, null: false, default: ''
    add_column :users, :middle_name, :string, null: false, default: ''
    add_column :users, :last_name, :string
    add_column :users, :address, :text
    add_column :users, :mobile, :string
    add_column :users, :activated_at, :datetime
  end
end
