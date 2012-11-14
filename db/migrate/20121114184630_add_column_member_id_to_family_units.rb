class AddColumnMemberIdToFamilyUnits < ActiveRecord::Migration
  def change
    add_column :family_units, :member_id, :integer
  end
end
