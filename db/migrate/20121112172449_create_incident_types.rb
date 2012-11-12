class CreateIncidentTypes < ActiveRecord::Migration
  def change
    create_table :incident_types do |t|
      t.string :description, :null => false
      t.text :definition, :null => false

      t.timestamps
    end
  end
end
