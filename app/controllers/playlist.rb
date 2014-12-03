get '/playlists/all' do
  if session[:user_id]
    @playlists = Playlist.all
    erb :"/playlist/all"
  else
    redirect("/login")
  end
end