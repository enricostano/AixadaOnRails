class RenameColumnOperatorIdToUserIdInIncidents < ActiveRecord::Migration
  def change
    rename_column :incidents, :operator_id, :user_id
  end
end
