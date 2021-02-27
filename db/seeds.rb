# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# #USERS
User.create(name: "Emma Otto", email: "ottoriffic@email.com", password: "password1234")
User.create(name: "Tod Hintzen", email: "hottoddy@email.com", password: "password1234")
User.create(name: "Robina Martin", email: "r_martin@email.com", password: "password1234")
User.create(name: "Christian McNiel", email: "comicchristian@email.com", password: "password1234")

# #ACTORS
Actor.create(name: "Jensen Ackles", age: "42", creator_id: 1, editor_id: 1)
Actor.create(name: "Jared Padalecki", age: "38", creator_id: 1, editor_id: 1)
Actor.create(name: "Mark Sheppard", age: "56", creator_id: 1, editor_id: 1)
Actor.create(name: "Lindsay Morgan", age: "30", creator_id: 1, editor_id: 1)
Actor.create(name: "Coby Bell", age: "45", creator_id: 1, editor_id: 1)
Actor.create(name: "Pedro Pascal", age: "45", creator_id: 2, editor_id: 2)
Actor.create(name: "Gina Carano", age: "38", creator_id: 2, editor_id: 2)
Actor.create(name: "Carl Weathers", age: "73", creator_id: 2, editor_id: 2)
Actor.create(name: "Elizabeth Olsen", age: "32", creator_id: 3, editor_id: 3)
Actor.create(name: "Paul Bettany", age: "49", creator_id: 3, editor_id: 3)
Actor.create(name: "Kat Dennings", age: "34", creator_id: 3, editor_id: 3)
Actor.create(name: "Emily Deschanel", age: "44", creator_id: 4, editor_id: 4)
Actor.create(name: "David Boreanaz", age: "51", creator_id: 4, editor_id: 4)
Actor.create(name: "Michaela Conlin", age: "42", creator_id: 4, editor_id: 4)

# #TV SHOWS
TvShow.create(name: "Supernatural", start_date: "September 13, 2005", currently_airing: false, end_date: "November 19, 2020", network: "The CW", synopsis: "This haunting series follows the thrilling yet terrifying journeys of Sam and Dean Winchester, two brothers who face an increasingly sinister landscape as they hunt monsters. After losing their mother to a supernatural force, the brothers were raised by their father as soldiers who track mysterious and demonic creatures. Violent memories and relationship-threatening secrets add additional burdens on Sam and Dean as they investigate all things that go bump in the night. As old tricks and tools are rendered useless and friends betray them, the brothers must rely on each other as they encounter new enemies.", creator_id: 1, editor_id: 1)
TvShow.create(name: "Walker", start_date: "January 21, 2020", currently_airing: true, end_date: "", network: "The CW", synopsis: "A reimagining of the long-running series 'Walker, Texas Ranger,' 'Walker' follows the adventures of Cordell Walker, a widower and father of two with his own moral code, as he returns home to Austin after being under cover for two years, only to discover there's harder work to be done at home. He must attempt to reconnect with his creative and thoughtful son and his headstrong, somewhat rebellious teenage daughter and navigate clashes with his family -- an ADA brother who stepped in during Walker's absence, his perceptive mother and his traditional rancher father. Walker finds unexpected common ground with his new partner while growing increasingly suspicious about the circumstances surrounding his wife's death.", creator_id: 1, editor_id: 1)
TvShow.create(name: "The Mandalorian", start_date: "November 12, 2019", currently_airing: true, end_date: "", network: "Disney +", synopsis: "Beginning five years after the events of Return of the Jedi (1983) and the fall of the Galactic Empire, The Mandalorian follows Din Djarin, a lone Mandalorian bounty hunter in the outer reaches of the galaxy. He is hired by remnant Imperial forces to retrieve the child Grogu, but instead goes on the run to protect the infant. While looking to reunite Grogu with his kind, they are pursued by Moff Gideon, who wants to use Grogu's connection to the Force.", creator_id: 2, editor_id: 2)
TvShow.create(name: "WandaVision", start_date: "January 15, 2021", currently_airing: true, end_date: "", network: "Disney +", synopsis: "Living idealized suburban lives, super-powered beings Wanda and Vision begin to suspect that everything is not as it seems.", creator_id: 3, editor_id: 3)
TvShow.create(name: "Bones", start_date: "September 13, 2005", currently_airing: false, end_date: "March 28, 2017", network: "Fox", synopsis: "Dr Temperance Brennan, a forensic anthropologist who works at the Jeffersonian Institution and also writes books, has an impressive ability to read clues from victims' bones. Consequently, law enforcement calls her to assist with investigations when remains are so badly decomposed, burned or destroyed that standard identification methods are useless. Brennan often finds herself teamed with Special Agent Seeley Booth, a former Army sniper, who mistrusts science and scientists when it comes to solving crimes but who has developed respect for Brennan, both professionally and personally.", creator_id: 4, editor_id: 4)

# #CHARACTERS
Character.create(name: "Dean Winchester", bio: "Hunter and older brother of Sam Winchester.", actor_id: 1, tv_show_id: 1, creator_id: 1, editor_id: 1)
Character.create(name: "Sam Winchester", bio: "Hunter and younger brother of Dean Winchester.", actor_id: 2, tv_show_id: 1, creator_id: 1, editor_id: 1)
Character.create(name: "Crowley", bio: "Named 'Fergus MacLeod' in life. In death became 'Crowley', the king of hell.", actor_id: 3, tv_show_id: 1, creator_id: 1, editor_id: 1)
Character.create(name: "Cordell Walker", bio: "A legendary Texas Ranger who just returned home after a lengthy undercover assignment.", actor_id: 2, tv_show_id: 2, creator_id: 1, editor_id: 1)
Character.create(name: "Micki Ramirez", bio: "Cordell's new partner in the Texas Rangers.", actor_id: 4, tv_show_id: 2, creator_id: 1, editor_id: 1)
Character.create(name: "Larry James", bio: "Captain Larry James, Cordell's former partner turned boss.", actor_id: 5, tv_show_id: 2, creator_id: 1, editor_id: 1)
Character.create(name: "Din Djarin", bio: "Commonly known as 'the Mandalorian' or 'Mando' for short, a human male Mandalorian who worked as a bounty hunter during the New Republic Era.", actor_id: 6, tv_show_id: 3, creator_id: 2, editor_id: 2)
Character.create(name: "Cara Dune", bio: "A human female Alderaanian who served as a shock trooper in the Alliance to Restore the Republic and the New Republic during the Galactic Civil War.", actor_id: 7, tv_show_id: 3, creator_id: 2, editor_id: 2)
Character.create(name: "Greef Karga", bio: "A human male and former disgraced magistrate before becoming an agent of the Bounty Hunters' Guild following the collapse of the Galactic Empire.", actor_id: 8, tv_show_id: 3, creator_id: 2, editor_id: 2)
Character.create(name: "Wanda Maximoff", bio: "Known as the Scarlet Witch. A Transian Sorceress and the twin sister of the speedster Quicksilver.", actor_id: 9, tv_show_id: 4, creator_id: 3, editor_id: 3)
Character.create(name: "Darcy Lewis", bio: "A former student of political science at Culver University who became an intern for Erik Selvig and Jane Foster's assistant. Lewis eventually graduated with a doctorate in astrophysics.", actor_id: 10, tv_show_id: 4, creator_id: 3, editor_id: 3)
Character.create(name: "Vision", bio: " An android who possesses a synthetic body (also referred to as 'synthezoid') made from vibranium created by Ultron with Helen Cho's help, using the powerful artifact known as the Mind Stone to bring Vision to life. Originally conceived as the perfect form for Ultron, the body was taken by the Avengers before Tony Stark and Bruce Banner proceeded to upload the remnants of Stark's personal A.I. J.A.R.V.I.S. into it. Upon his birth, Vision declared he was neither Ultron nor J.A.R.V.I.S., but one that would fight with them to protect humanity.", actor_id: 11, tv_show_id: 4, creator_id: 3, editor_id: 3)
Character.create(name: "Dr. Temperance Brennan", bio: "Temperance 'Bones' Brennan, Ph.D. is an anthropologist, forensic anthropologist, and kinesiologist, she is described in the series as a leading authority in the field of forensic anthropology.", actor_id: 12, tv_show_id: 5, creator_id: 4, editor_id: 4)
Character.create(name: "Seely Booth", bio: "A Special Agent with the FBI and co-protagonist of the series with Dr. Temperance Brennan, whom he affectionately refers to as 'Bones'.", actor_id: 13, tv_show_id: 5, creator_id: 4, editor_id: 4)
Character.create(name: "Angela Montenegro", bio: "A classically trained artist who creates forensic reconstructions for the police. Also best friends with Dr. Brennan.", actor_id: 14, tv_show_id: 5, creator_id: 4, editor_id: 4)

#REVIEWS