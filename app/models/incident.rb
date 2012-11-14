class Incident < ActiveRecord::Base
  # attr_accessible :title, :body
  
  # Relationships
  has_one :user
  has_one :incident_type
  
end
