class RemoveContactEmailFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :contact_email, :string
  end
end
