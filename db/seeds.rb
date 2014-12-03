require 'Faker'
#Must create 2 users through local host first

15.times do Playlist.create(name: Faker::Commerce.product_name, user_id: 1 ) end

15.times do Playlist.create(name: Faker::Commerce.product_name, user_id: 2 ) end

100.times do Song.create(title: Faker::Commerce.product_name, song_url: Faker::Internet.url, album_art: Faker::Avatar.image, user_id: [1,2].sample, playlist_id: rand(1..30))end