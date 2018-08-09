class CreateRatReports < ActiveRecord::Migration[5.2]
  def change
    create_table :rat_reports do |t|
      t.text :introduction
      t.text :comments
      t.text :observation
      t.text :improvements
      t.text :conclusion

      t.timestamps
    end
  end
end
