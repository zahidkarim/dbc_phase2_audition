
#View all playlists
get '/playlists/all' do
  logged_in
    @playlists = Playlist.all
    erb :"/playlist/all"
end

#View one playlist - all the songs in it
get '/playlists/:id' do |id|
  logged_in
  playlist = Playlist.find(id)
  @songs = playlist.songs
  erb :"/playlist/one"
end