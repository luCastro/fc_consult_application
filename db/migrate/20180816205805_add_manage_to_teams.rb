class AddManageToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :manage, :boolean, default: false
  end
end


add_index(:rat_reports, :audit_id, unique: true)