
#View all playlists
get '/playlists/all' do
  logged_in
    @playlists = Playlist.all
    erb :"/playlist/all"
end

#Create playlist
post '/playlists/all' do
  user = current_user
  user.playlists.create(name: params[:name])
  redirect("/my_playlists")
end

#View all my playlists
get '/my_playlists' do
  logged_in
    user = current_user
    @playlists = user.playlists
    erb :"/playlist/my_playlists"
end

#View one playlist - all the songs in it
get '/playlists/:id' do |id|
  logged_in
  playlist = Playlist.find(id)
  @songs = playlist.songs
  erb :"/playlist/one"
end