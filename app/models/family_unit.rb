class FamilyUnit < ActiveRecord::Base
  attr_accessible :active, :mentor_familyunit_id, :name, :member

  # Relationships
  belongs_to :member
  # belongs_to :user # used in Aixada but I think we don't need this
end
