#show
get '/writers/:id' do 
	@writer = Writer.find(params[:id])
	erb :'writers/show'
end 