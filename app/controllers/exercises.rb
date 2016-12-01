get '/exercises' do
  @exercises = Exercise.all
  erb :'/exercises/index'
end