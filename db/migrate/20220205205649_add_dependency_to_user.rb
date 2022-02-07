class AddDependencyToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :dependency, null: true
  end
end
