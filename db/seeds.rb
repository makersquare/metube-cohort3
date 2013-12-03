# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Video.destroy_all

videos = {
  "gladiator" => {
    title: 'Gladiator',
    youtube_id: 'FI1ylg4GKv8',
    description: "Crowe shows everyone what's up."
  },
  "matilda" => {
    title: 'Matilda',
    youtube_id: 'EVWOQwZENBg',
    description: "Quite the random movie, but a classic for sure!"
  },
  "seinfeld" => {
    title: 'Seinfeld',
    youtube_id: 'm5OoR0Qjrlo',
    description: 'A great description on where socks really go'
  },
  "friends" => {
    title: 'Friends',
    youtube_id: 'XIsVHF2bwVs',
    description: 'Gotta love friends!'
  }
}

videos.each do |key, video|
  Video.create(video)
end