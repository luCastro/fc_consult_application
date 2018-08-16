class RemoveDurationFromAudits < ActiveRecord::Migration[5.2]
  def change
    remove_column :audits, :duration, :integer
  end
end
