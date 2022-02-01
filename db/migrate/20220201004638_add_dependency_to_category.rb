class AddDependencyToCategory < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :dependency
  end
end
