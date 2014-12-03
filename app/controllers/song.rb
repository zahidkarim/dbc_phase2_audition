#view all my songs
get '/my_songs' do
  logged_in
  user = current_user
  @songs = user.songs
  erb :"/song/my_songs"
end

#Create song
post '/my_songs' do
  song = params[:song]
  playlist = Playlist.find(song[:playlist_id])
  playlist.songs.create(title: song[:title],album_art: song[:album_art],song_url: song[:song_url], user_id: current_user.id)
  redirect("/playlists/#{song[:playlist_id]}")
end

#View one song
get '/songs/:id' do |id|
  logged_in
    @song = Song.find(id)
    @playlist = @song.playlist
    p @playlist
    erb :"/song/one"
end

#Edit palylist
# put '/songs/:id' do |id|
#   playlist = Playlist.find(id)
#   playlist.update(params[:playlist])
#   redirect("/playlists/#{id}")
# end

# Delete playlist
delete '/songs/:id' do |id|
  song = Song.find(id)
  @playlist_id = song.playlist_id
  song.destroy
  redirect("/playlists/#{@playlist_id}")
end