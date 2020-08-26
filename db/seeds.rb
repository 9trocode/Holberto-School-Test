# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
User.create([{ name: 'Admin', email: 'admin@gmail.com', phone: '+2348166480703', password_digest: '$2a$10$2BmMBijfaxCscGB1oefate..HgVJ2Z/MxZdJOsZ/FegU/AIFL26wi', is_admin: true }])
User.create([{ name: 'Admin', email: 'test@gmail.com', phone: '+2348166480702', password_digest: '$2a$10$2BmMBijfaxCscGB1oefate..HgVJ2Z/MxZdJOsZ/FegU/AIFL26wi', is_admin: false }])

Categories.create([{ name: 'Software', ref: 'bookStore_96647', description: 'All Software Related Books can be here' }])
LibraryLocation.create([{ name: 'San Fransisco Library', ref: 'booklib_96647', city: 'Sansfransisco', location_desc: 'Turn left and right' }])

Book.create([{ title: 'Book of Life', author: 'Alex ID',
               categories_id: 1, library_location_id: 1 },
             { title: 'Book of Jeez', author: 'Alex ID',
               categories_id: 1, library_location_id: 1 },
             { title: 'Book of Neez', author: 'Alex ID',
               categories_id: 1, library_location_id: 1 },
             { title: 'Book of Meez', author: 'Alex ID',
               categories_id: 1, library_location_id: 1 }])
