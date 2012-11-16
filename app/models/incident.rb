class Incident < ActiveRecord::Base
  attr_accessible :incident_type, :user, :subject, :details, :provider
  
  # Relationships
  belongs_to :user
  belongs_to :incident_type
  belongs_to :provider

  scope :between, lambda { | from_date, to_date | where('created_at BETWEEN ? AND ?', from_date, to_date) }

end
