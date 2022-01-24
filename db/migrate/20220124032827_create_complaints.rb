class CreateComplaints < ActiveRecord::Migration[7.0]
  def change
    create_table :complaints do |t|
      t.string :subject
      t.text :description
      t.text :address
      t.string :street
      t.string :neighbourhood
      t.string :town
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
