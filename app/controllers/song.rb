#View one song
get '/songs/:id' do |id|
  logged_in
    @song = Song.find(id)
    erb :"/song/one"
end