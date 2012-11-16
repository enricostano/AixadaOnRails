class Incident < ActiveRecord::Base
  attr_accessible :incident_type, :user, :subject, :details, :provider
  
  # Relationships
  belongs_to :user
  belongs_to :incident_type
  belongs_to :provider

  scope :between, lambda { | from_date, to_date | where('created_at BETWEEN ? AND ?', from_date, to_date) }

  def self.get_incident_listing(from_date, to_date, type)
   self.joins(:user).where(:created_at => from_date..to_date)
     #.order("created_at DESC")
  end
              

    #select
      #i.*,
      #mem.name as user_name,
      #mem.uf_id as uf_id, 
      #it.id as distribution_level,
      #it.description as type_description,
      #pv.id as provider_id,
      #pv.name as provider_name
       #from
          #aixada_incident_type it,
          #aixada_user u,
          #aixada_member mem,
          #aixada_incident i
       #left join
          #aixada_provider pv
          #on
          #i.provider_concerned = pv.id
       #where
          #i.ts >= from_date and i.ts <= to_date
          #and i.operator_id = u.id
          #and  u.member_id = mem.id
          #and i.incident_type_id >= the_type
          #and it.id = i.incident_type_id
       #order by
          #i.ts desc;
end
