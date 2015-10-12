# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: 'mario')

user2 = User.create!(name: 'pepe')

user2.rsvps << Rsvp.create!(name: 'foo-1')
user2.rsvps << Rsvp.create!(name: 'foo-2')

