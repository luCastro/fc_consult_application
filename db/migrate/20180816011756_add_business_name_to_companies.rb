class AddBusinessNameToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :business_name, :string
  end
end
