#view all my songs
get '/my_songs' do
  logged_in
  user = current_user
  @songs = user.songs
  erb :"/song/my_songs"
end

#Create song
post '/my_songs' do
  p song = params[:song]
  playlist = Playlist.find(song[:playlist_id])
  playlist.songs.create(title: song[:title],album_art: song[:album_art],song_url: song[:song_url], user_id: current_user.id)
  redirect("/playlists/#{song[:playlist_id]}")
end

#View one song
get '/songs/:id' do |id|
  logged_in
    @song = Song.find(id)
    erb :"/song/one"
end