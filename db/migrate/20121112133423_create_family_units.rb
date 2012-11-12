class CreateFamilyUnits < ActiveRecord::Migration
  def change
    create_table :family_units do |t|
      t.string :name, :null => false
      t.boolean :active, :default => true
      t.integer :mentor_familyunit_id, :default => 0

      t.timestamps
    end
  end
end
