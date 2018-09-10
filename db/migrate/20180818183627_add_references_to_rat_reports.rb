class AddReferencesToRatReports < ActiveRecord::Migration[5.2]
  def change
    add_reference :rat_reports, :audit, foreign_key: true, unique: true
  end
end
