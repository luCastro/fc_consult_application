class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :zip_code
      t.string :cnpj
      t.string :phone
      t.string :contact_name
      t.string :contact_email
      t.string :current_certification

      t.timestamps
    end
  end
end
