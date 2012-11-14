class IncidentType < ActiveRecord::Base
  attr_accessible :definition, :description

  # Relationships
  has_many :incident

end
