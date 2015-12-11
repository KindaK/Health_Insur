# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts 'Adding seed states with country.'

Search.create  country:  'United States',  state:  'Alabama'
Search.create  country:  'United States',  state:  'Alaska'
Search.create  country:  'United States',  state:  'Arizona'
Search.create  country:  'United States',  state:  'Arkansas'
Search.create  country:  'United States',  state:  'Delaware'
Search.create  country:  'United States',  state:  'Florida'
Search.create  country:  'United States',  state:  'Georgia'
Search.create  country:  'United States',  state:  'Illinois'
Search.create  country:  'United States',  state:  'Indiana'
Search.create  country:  'United States',  state:  'Iowa'
Search.create  country:  'United States',  state:  'Kansas'
Search.create  country:  'United States',  state:  'Louisiana'
Search.create  country:  'United States',  state:  'Maine'
Search.create  country:  'United States',  state:  'Michigan'
Search.create  country:  'United States',  state:  'Mississippi'
Search.create  country:  'United States',  state:  'Missouri'
Search.create  country:  'United States',  state:  'Montana'
Search.create  country:  'United States',  state:  'Nebraska'
Search.create  country:  'United States',  state:  'New Hampshire'
Search.create  country:  'United States',  state:  'New Jersey'
Search.create  country:  'United States',  state:  'North Carolina'
Search.create  country:  'United States',  state:  'North Dakota'
Search.create  country:  'United States',  state:  'Ohio'
Search.create  country:  'United States',  state:  'Oklahoma'
Search.create  country:  'United States',  state:  'Pennsylvania'
Search.create  country:  'United States',  state:  'South Carolina'
Search.create  country:  'United States',  state:  'South Dakota'
Search.create  country:  'United States',  state:  'Tennessee'
Search.create  country:  'United States',  state:  'Texas'
Search.create  country:  'United States',  state:  'Utah'
Search.create  country:  'United States',  state:  'Virginia'
Search.create  country:  'United States',  state:  'West Virginia'
Search.create  country:  'United States',  state:  'Wisconsin'
Search.create  country:  'United States',  state:  'Wyoming'

puts 'Done adding seed states with country.'