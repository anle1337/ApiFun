# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.create(firstName: "Dale", lastName: "Chen", address: "1337 Varechao St", city: "San Francisco", workEmail: "work@work.com", workPhone: "555-555-5555")

YodaTalk.create(sentence: "You are seeking my help?")