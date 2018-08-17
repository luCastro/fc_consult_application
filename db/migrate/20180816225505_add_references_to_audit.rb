class AddReferencesToAudit < ActiveRecord::Migration[5.2]
  def change
    add_reference :audits, :site, foreign_key: true
  end
end
