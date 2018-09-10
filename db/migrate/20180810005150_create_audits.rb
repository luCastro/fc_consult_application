class CreateAudits < ActiveRecord::Migration[5.2]
  def change
    create_table :audits do |t|
      t.string :activity
      t.string :target
      t.string :criterion
      t.string :requirement
      t.integer :duration
      t.string :audit_doc
      t.timestamp :start_date
      t.timestamp :end_date
      t.references :company, foreign_key: true


      t.timestamps
    end
  end
end
