class AddManageToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :manage, :boolean, default: false
  end
end
