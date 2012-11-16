class FixingIndexesInMembersAndFamilyUnit < ActiveRecord::Migration
  def change
    remove_column :family_units, :member_id
    add_column :members, :family_unit_id, :integer
  end
end
