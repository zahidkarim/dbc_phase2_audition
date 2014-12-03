#view all my songs
get '/songs/my_songs' do
  logged_in
  user = current_user
  @songs = user.songs
  erb :"/song/my_songs"
end

#View one song
get '/songs/:id' do |id|
  logged_in
    @song = Song.find(id)
    erb :"/song/one"
end