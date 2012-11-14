class Incident < ActiveRecord::Base
   attr_accessible :incident_type_id
  
  # Relationships
  has_one :user
  belongs_to :incident_type
 
  def get_incident_listing(from_date, to_date, type)
   self.joins(
     .where(:created_at => from_date..to_date)
     .order("created_at DESC")
              

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
