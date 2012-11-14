class Member < ActiveRecord::Base
  attr_accessible :active, :address, :adult, :city, :custom_member_ref, :name, :nif, :notes, :participant, :phone1, :phone2, :web, :zip, :user_id

  # Relationships
  belongs_to :user
  has_one    :family_unit
end
