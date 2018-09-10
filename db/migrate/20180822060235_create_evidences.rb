class CreateEvidences < ActiveRecord::Migration[5.2]
  def change
    create_table :evidences do |t|
      t.string :title
      t.references :audit, foreign_key: true

      t.timestamps
    end
  end
end
