class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :custom_member_ref, :null => false
      t.integer :family_unit_id, :null => false
      t.string :name, :null => false
      t.string :address, :null => false
      t.string :nif, :limit => 15, :default => nil
      t.string :zip, :limit => 10, :default => nil
      t.string :city, :null => false
      t.string :phone1, :limit => 50, :default => nil
      t.string :phone2, :limit => 50, :default => nil
      t.string :web, :default => nil
      t.text :notes, :default => nil
      t.boolean :active, :default => true
      t.boolean :participant, :default => true
      t.boolean :adult, :default => true

      t.timestamps
    end
  end
end
