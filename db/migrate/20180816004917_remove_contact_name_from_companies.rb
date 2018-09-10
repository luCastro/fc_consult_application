class RemoveContactNameFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :contact_name, :string
  end
end
