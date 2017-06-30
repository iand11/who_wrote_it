get '/' do
  erb :'home'
end

post '/' do
  @song = Song.song_name(params[:song])
    if @song != nil 
      redirect :"songs/#{@song.id}"
    else
      erb :'home'
    end 
end 

get '/about' do
  erb :'/about'
end 



# #index
# get '/contacts' do
#   @contacts = Contact.all
#   erb :'contacts/index'
# end

# #new
# get '/contacts/new' do
#   @contact = Contact.new
#   erb :'contacts/new'
# end

# #create
# post '/contacts' do
#   puts params
#   @contact = Contact.create(params[:contact])
#   redirect '/contacts'
# end

# #show
# get '/contacts/:id' do
#   @contact = Contact.find(params[:id])
#   erb :'contacts/show'
# end

# #edit
# get '/contacts/:id/edit' do
#   @contact = Contact.find(params[:id])
#   erb :'contacts/edit'
# end

# #update
# def update_contact
#   puts params
#   @contact = Contact.find(params[:id])
#   @contact.update(params[:contact])
#   redirect "/contacts/#{@contact.id}"
# end
# patch '/contacts/:id' do
#   update_contact
# end

# #delete
# delete '/contacts/:id' do
#   update_contact
# end
