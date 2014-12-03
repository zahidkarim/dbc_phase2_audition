get '/soundcloud' do
# create a client object with your app credentials
client = Soundcloud.new(:client_id => 'b99714ff12392f9d7e1498ab5166732d')

# find all sounds of buskers licensed under 'creative commons share alike'
@tracks = client.get('/tracks', :q => params[:search], :licence => 'cc-by-sa')
p @tracks[0]
erb :'/api/soundcloud'
end
