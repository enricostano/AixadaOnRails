class AddColumnProviderIdToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :provider_id, :integer
  end
end
