# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

players = [
 { name: 'Alex Seville', email: 'seville@yahoo-inc.com' }
].select{|p| Player.find_by_email(p[:email]).nil? }



Player.create(players)