class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string  :subject, :null => false
      t.integer :incident_type_id, :null => false
      t.integer :operator_id, :null => false
      t.text    :details, :null => false
      t.integer :priority, :default => 3
      t.string  :string, :limit => 10, :default => 'Open'

      t.timestamps
    end
  end
end
