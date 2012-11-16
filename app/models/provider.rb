class Provider < ActiveRecord::Base
  attr_accessible :family_unit, :name

  # Relationships
  belongs_to :family_unit
end
