# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# #USERS
# User.create(name: "Emma Otto", username: "ottoriffic", password: "password1234")
# User.create(name: "Tod Hintzen", username: "hottoddy", password: "password1234")
# User.create(name: "Robina Martin", username: "r_martin", password: "password1234")
# User.create(name: "Christian McNiel", username: "comicchristian", password: "password1234")
# User.create(name: "Jenny Patterson", username: "pattersonpenny", password: "password1234")
# User.create(name: "Jake Griffin", username: "justjake", password: "password1234")

#ACTORS
Actor.create(name: "Jensen Ackles", age: "")
Actor.create(name: "Jared Padalecki", age: "")
Actor.create(name: "Mark Sheppard", age: "")
Actor.create(name: "Colin Morgan", age: "")
Actor.create(name: "Bradley James", age: "")
Actor.create(name: "Katie McGrath", age: "")
Actor.create(name: "Ian Somerhalder", age: "")
Actor.create(name: "Paul Wesley", age: "")
Actor.create(name: "Nina Dobrev", age: "")
Actor.create(name: "Joseph Morgan", age: "")
Actor.create(name: "Phoebe Tonkin", age: "")
Actor.create(name: "Claire Holt", age: "")
Actor.create(name: "Cole Sprouse", age: "")
Actor.create(name: "Lili Reinheart", age: "")
Actor.create(name: "KJ Apa", age: "")

#TV SHOWS
TvShow.create(name: "Supernatural", start_date: "", currently_airing: false, end_date: "", network: "", synopsis: "")
TvShow.create(name: "Merlin", start_date: "", currently_airing: false, end_date: "", network: "", synopsis: "")
TvShow.create(name: "The Vampire Diaries", start_date: "", currently_airing: false, end_date: "", network: "", synopsis: "")
TvShow.create(name: "The Origionals", start_date: "", currently_airing: false, end_date: "", network: "", synopsis: "")
TvShow.create(name: "Riverdale", start_date: "", currently_airing: true, end_date: "", network: "", synopsis: "")

#CHARACTERS
Character.create(name: "Dean Winchester", age: "", description: "")
Character.create(name: "Sam Winchester", age: "", description: "")
Character.create(name: "Crowley", age: "", description: "")
Character.create(name: "Merlin", age: "", description: "")
Character.create(name: "Arthur Pendragon", age: "", description: "")
Character.create(name: "Morgana Pendragon", age: "", description: "")
Character.create(name: "Damon Salvatore", age: "", description: "")
Character.create(name: "Stefan Salvatore", age: "", description: "")
Character.create(name: "Elena Gilbert", age: "", description: "")
Character.create(name: "Klaus Mikaelson", age: "", description: "")
Character.create(name: "Hayley Marshall", age: "", description: "")
Character.create(name: "Rebekah Mikaelson", age: "", description: "")
Character.create(name: "Betty Cooper", age: "", description: "")
Character.create(name: "Archie Andrews", age: "", description: "")
Character.create(name: "Jughead Jones", age: "", description: "")

# #REVIEWS