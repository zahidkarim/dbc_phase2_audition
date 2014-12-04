get '/soundcloud' do
@tracks = CLIENT.get('/tracks', :q => params[:search], :licence => 'cc-by-sa')
erb :'/api/soundcloud'
end

#Try and get streaming working
# get '/soundcloud1' do
# track = CLIENT.get('/tracks/293')
# @stream_url = CLIENT.get(track.stream_url, :allow_redirects => true)
# erb :'/api/soundcloud1'
# end