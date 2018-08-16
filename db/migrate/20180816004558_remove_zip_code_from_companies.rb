class RemoveZipCodeFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :zip_code, :string
  end
end
