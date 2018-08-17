class RemoveManageFromTeams < ActiveRecord::Migration[5.2]
  def change
    remove_column :teams, :manage, :boolean
  end
end
