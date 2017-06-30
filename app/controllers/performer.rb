#show
get '/performers/:id' do 
	@performer = Performer.find(params[:id])
	erb :'performers/show'
end