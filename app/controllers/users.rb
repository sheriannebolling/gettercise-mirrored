get "/users/new" do 
  erb :'users/new'
end

post '/users' do 
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    @exercises = @user.exercises.all 
    redirect "users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  @exercises = @user.exercises 
  erb :'/users/show'
end