class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :family_unit_id
    remove_column :users, :member_id
    remove_column :users, :provider_id
  end
end
