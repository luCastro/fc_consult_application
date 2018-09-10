class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.references :user, foreign_key: true
      t.references :audit, foreign_key: true
      t.boolean :manage
      

      t.timestamps
    end
  end
end
