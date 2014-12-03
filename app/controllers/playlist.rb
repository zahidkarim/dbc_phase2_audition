get '/playlists/all' do
  logged_in
    @playlists = Playlist.all
    erb :"/playlist/all"
end

get '/playlists/:id' do |id|
  logged_in
  playlist = Playlist.find(id)
  @songs = playlist.songs
  erb :"/playlist/one"
end