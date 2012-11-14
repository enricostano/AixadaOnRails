class FixingIndexesInMembers < ActiveRecord::Migration
  def change
    remove_column :members, :family_unit_id
    add_column :members, :user_id, :integer
  end
end
