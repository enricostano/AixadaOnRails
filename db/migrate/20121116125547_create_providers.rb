class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.integer :family_unit_id

      t.timestamps
    end
  end
end
