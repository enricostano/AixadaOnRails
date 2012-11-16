class Member < ActiveRecord::Base
  attr_accessible :active, :address, :adult, :city, :custom_member_ref, :name, :nif, :notes, :participant, :phone1, :phone2, :web, :zip, :user, :family_unit

  # Relationships
  belongs_to :user
  belongs_to :family_unit
end
