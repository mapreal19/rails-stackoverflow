# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Promotion.create!([
  {name: 'p1', start_period: DateTime.new(2001), end_period: DateTime.new(2002)},
  {name: 'p1', start_period: DateTime.new(2001), end_period: DateTime.new(2003)},
  {name: 'p1', start_period: DateTime.new(2008), end_period: DateTime.new(2009)}
])

    # t.string   "name"
    # t.datetime "start_period"
    # t.datetime "end_period"
