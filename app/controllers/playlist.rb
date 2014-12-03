get '/playlists/all' do
  logged_in
    @playlists = Playlist.all
    erb :"/playlist/all"
end

get '/playlists/:id' do |id|
  logged_in

    # erb :"/playlist/one"
  erb :"/playlist/all"
end