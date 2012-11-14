class IncidentType < ActiveRecord::Base
  attr_accessible :definition, :description

  # Relationships
  belongs_to :incident

end
