class RenameColumnToAudits < ActiveRecord::Migration[5.2]
  def change
    change_table :audits do |t|
      t.rename :start_date, :start_time
      t.rename :end_date, :end_time
    end
  end
end

