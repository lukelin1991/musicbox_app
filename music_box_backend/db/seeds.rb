# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
PlaylistSong.destroy_all
Song.destroy_all
Playlist.destroy_all
Artist.destroy_all
User.destroy_all

#artists
a1 = Artist.create(name: "Paul Simon")
a2 = Artist.create(name: "Talking Heads")
a3 = Artist.create(name: "Dimash")
#user
u1 = User.create(username: "Scott")
#songs
s1 = Song.create(name: "Diamonds On the Soles of her shoes", mp3: "Paul_Simon_Diamonds.mp3", cover_art: "PaulSimonCover.jpg", artist_id: a1.id)
s2 = Song.create(name: "Once in a Lifetime", mp3: "Talking_Heads_Lifetime.mp3", cover_art: "TalkingHeadsCover.jpg", artist_id: a2.id)
s3 = Song.create(name: "S.O.S D'un Terrien en destresse", mp3: "Dimash_SOS.mp3", cover_art: "DimashCover.jpg", artist_id: a3.id)
#playlist
p1 = Playlist.create(name: "Scotts Faves", user_id: u1.id)

PlaylistSong.create(playlist_id: p1.id, song_id: s1.id)
PlaylistSong.create(playlist_id: p1.id, song_id: s2.id)

puts "done seeded!"