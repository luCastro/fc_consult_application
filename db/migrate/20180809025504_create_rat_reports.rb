class CreateRatReports < ActiveRecord::Migration[5.2]
  def change
    create_table :rat_reports do |t|
      t.text :introduction
      t.text :comment
      t.text :observation
      t.text :improvement
      t.text :conclusion
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
