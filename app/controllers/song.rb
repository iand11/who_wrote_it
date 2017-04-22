#show all
# get '/songs/index' do 
#   # @song = Song.song_name(params[:song])
#   erb :'/songs/index'
# end 

#show specific
get '/songs/:id' do 
	@song = Song.find(params[:id])
	erb :'songs/show'
end 

# post '/' do 
# 	@song = 
# end