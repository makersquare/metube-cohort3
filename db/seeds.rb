# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

users = [
  {first_name: "Mike", last_name: "Ornellas"},
  {first_name: "Amanda", last_name: "Contreras"},
  {first_name: "Shaan", last_name: "Shah"},
  {first_name: "Gene", last_name: "Le"},
  {first_name: "Michael", last_name: "Jordan"}
]

users.each do |user|
  User.create(first_name: user[:first_name], last_name: user[:last_name])
  email_address = User.last.first_name.downcase + "@themakersquare.com"
  User.last.update_attributes(email_address: email_address)
end

Video.destroy_all

videos = {
  "gladiator" => {
    title: 'Gladiator',
    youtube_id: 'FI1ylg4GKv8',
    description: "Maximus is a powerful Roman general, loved by the people and the aging Emperor, Marcus Aurelius. Before his death, the Emperor chooses Maximus to be his heir over his own son, Commodus, and a power struggle leaves Maximus and his family condemned to death. The powerful general is unable to save his family, and his loss of will allows him to get captured and put into the Gladiator games until he dies. The only desire that fuels him now is the chance to rise to the top so that he will be able to look into the eyes of the man who will feel his revenge."
  },
  "matilda" => {
    title: 'Matilda',
    youtube_id: 'EVWOQwZENBg',
    description: "A grouchy couple are parents to a very sweet girl, Matilda. Unlike her bratty brother and mean parents, Matilda becomes a very sweet and extremely intelligent 6 year old girl, who is very keen to go to school and read books. After a while, her parents send her to school with the worst principal in the world, a very sweet teacher, and good friends. While trying to put up with her parents' and principal's cruelty, she starts to unwittingly unleash telekinetic powers, destroying a television and making a newt fly onto the principal. With enough practice, Matilda starts to learn to control her telekinetic powers and soon using them on her principal so she can drive her away from the school."
  },
  "seinfeld" => {
    title: 'Seinfeld',
    youtube_id: 'm5OoR0Qjrlo',
    description: 'One of the most watched television shows of the 1990s, "Seinfeld" is a true-to-life comedy series that follows the events of a group of friends. The group consists of Jerry Seinfeld, a stand-up comedian who questions every bizarre tidbit about life; George Costanza, a hard-luck member of the New York Yankees organization; Elaine Benes, a flashy woman and book editor who is not afraid to speak her mind; and Cosmo Kramer, an extremely eccentric, lanky goofball. Another very notable member of the show is Newman, a chubby mailman, friend of Kramer, and, almost always, nemesis of Jerry. Other sources of comedy appear in the form of the parents of both Jerry and George.'
  },
  "friends" => {
    title: 'Friends',
    youtube_id: 'XIsVHF2bwVs',
    description: "A Comedy Series based in Manhatten about 6 young friends, in the struggle to find success and happiness in life, but it is never that straight forward, is it? Rachel Green - A popular schoolgirl of the past, is now a spoiled brat living off her fathers finance. In an attempt to start a new life after running out on her wedding, she shares an apartment with an old best friend Monica Gellar, and eventually befriends the other 4 and Monica's older brother, Ross. Monica Gellar - A compulsive neat freak, who has trouble with her love life. Monica was teased when she was in high school for being overweight. However, now a head-chef at a top restaurant in Manhatten, she has lost all her excessive weight, and just wants to start a family with 'the right guy' to complete a happy life. Ross Gellar - Older Brother of Monica, he has always had strong love feelings for Rachel. A successful professor of science leads him to be often teased by the other 5 friends about his profession. Ross has experienced many misfortunes in life, including 3 divorces and bringing up a child with his lesbian ex-wife. Ross now is devoted to finding a girl to settle down with, without a divorce, and makes it his personal goal to share happiness with Rachel. Phoebe Buffay - Brought up as a fatherless child, Phoebe is a ditzy yet loveable hippy, who has become a personal masseuse. Despite liking her profession, her dream is to become a star in the music industry and bases her songs on her life experiences. The other 5 friends secretly believe that Phoebe will never make it, but still encourage her to write. Phoebe often performs at the 'Central Perk' coffee house, and strongly believes in herself. Chandler Bing - A financially secure data processor, who relies on humor as a defense mechanism. Despite being rich, the other 5 have no idea what his profession is, and Chandler is a wimpy, average looking cigarette addict, who has never had a serious relationship. Will he ever get it, and is she just round the corner from him? Joey Tribiani - Despite being close to all the friends, he is especially open with Chandler, who his also his roommate. Joey is a small time actor, who desperately wants fame and fortune, and Chandler has high hopes of Joey, so helps Joey with money for acting lessons and professional photographs. Despite being a relatively bad actor, Joey is an adorable, sensitive guy, who is very successful with women, but needs to become famous and rich to complete his successful life. A Side Splitting Series, with emotion and drama. Definite One To Watch!"
  }
}

num = 0
videos.each do |key, video|
  Video.create(video)
  Video.last.user_id = User.first.id + num
  num += 1
end

