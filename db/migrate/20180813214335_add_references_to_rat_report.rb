class AddReferencesToRatReport < ActiveRecord::Migration[5.2]
  def change
    add_reference :rat_reports, :audit, foreign_key: true
  end
end
