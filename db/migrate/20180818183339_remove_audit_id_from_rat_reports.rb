class RemoveAuditIdFromRatReports < ActiveRecord::Migration[5.2]
  def change
    remove_column :rat_reports, :audit_id, :bigint
  end
end
