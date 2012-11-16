IncidentType.create([{ description: 'internal',
                       definition:  'incidents are restricted to loggon in users.' },
                     { description: 'internal + email',
                       definition:  'like 1 + incidents are send out as email if possible' },
                     { description: 'internal + portal',
                       definition:  'like 1 + incidents are posted on the portal' },
                     { description: 'internal + email + portal',
                       definition:  'Incidents are posted internally, send out as email and posted on the portal' }])

User.create([ email: 'puppa@puppa.pup',
              password: 'password',
              password_confirmation: 'password'])

FamilyUnit.create([ name: 'admin' ])

Member.create([ name:              'admin',
                user:              User.first,
                family_unit:       FamilyUnit.first,
                custom_member_ref: 'que es esto',
                address:           'c/ de la Aixada, 34',
                nif:               '12345678901',
                zip:               '74024',
                city:              'Barcelona' ])

Provider.create([ name:        'Fracking Good Provider coop',
                  family_unit: FamilyUnit.first ])

Incident.create([ subject:       'My first ever incident',
                  incident_type: IncidentType.first,
                  user:          User.first,
                  details:       'Vaya asco de zanahorias...' ])
