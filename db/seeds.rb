# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

event1 = Event.create({name: "Deloitte", description: "Cyber War Game Demo", date: Date.today})
event2 = Event.create({name: "PwC", description: "Assurance Training 3", date: Date.today + 6.days})
event3 = Event.create({name: "KPMG", description: "Training Session", date: Date.today + 5.months })
event4 = Event.create({name: "Facebook", description: "Brainstorming Session", date: Date.today + 3.days})
event5 = Event.create({name: "Accenture", description: "Panel Discussion", date: Date.today + 2.days})
