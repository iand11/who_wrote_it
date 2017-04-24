get '/login' do 
  erb :'users/login'
end 

get '/users/new' do 
  @user = User.new
  erb :'/users/new'
end 

post '/users' do 
  user = User.create(params[:user])
    if user.valid?
      redirect '/'
    else
      # status 422
      # @errors = user.errors.full_messages
      erb :'/users/new'
    end 
end