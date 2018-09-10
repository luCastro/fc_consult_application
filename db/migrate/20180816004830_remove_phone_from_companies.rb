class RemovePhoneFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :phone, :string
  end
end
