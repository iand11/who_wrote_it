#show specific
get '/songs/:id' do 
	@song = Song.find(params[:id])
	erb :'songs/show'
end 
