class Member < ActiveRecord::Base
  attr_accessible :active, :address, :adult, :city, :custom_member_ref, :family_unit_id, :name, :nif, :notes, :participant, :phone1, :phone2, :web, :zip

  # Relationships
  belongs_to :user
  has_one    :family_unit
end
