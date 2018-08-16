class RemoveAddressFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :address, :string
  end
end
