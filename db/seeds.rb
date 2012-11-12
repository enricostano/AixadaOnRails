IncidentType.create([{ description: 'internal',
                       definition:  'incidents are restricted to loggon in users.' },
                     { description: 'internal + email',
                       definition:  'like 1 + incidents are send out as email if possible' },
                     { description: 'internal + portal',
                       definition:  'like 1 + incidents are posted on the portal' },
                     { description: 'internal + email + portal',
                       definition:  'Incidents are posted internally, send out as email and posted on the portal' }])
