class AddScopeToAudits < ActiveRecord::Migration[5.2]
  def change
    add_column :audits, :scope, :string
  end
end
