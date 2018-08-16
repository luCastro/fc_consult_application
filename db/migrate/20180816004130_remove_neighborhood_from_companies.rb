class RemoveNeighborhoodFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :neighborhood, :string
  end
end
