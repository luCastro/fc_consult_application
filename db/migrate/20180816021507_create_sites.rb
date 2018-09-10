class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :line_1
      t.string :line_2
      t.string :line_3
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :telephone
      t.string :contact_name
      t.string :contact_email
      t.float :longitude
      t.float :latitude
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
