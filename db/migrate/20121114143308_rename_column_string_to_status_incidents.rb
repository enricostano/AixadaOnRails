class RenameColumnStringToStatusIncidents < ActiveRecord::Migration
  def change
    rename_column :incidents, :string, :status
  end
end
