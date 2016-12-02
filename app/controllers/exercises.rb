require 'pry'
require 'JSON'
require 'date'

get '/exercises' do
  @exercises = Exercise.all
  erb :'/exercises/index'
end

post '/exercises/new' do
  @user = current_user
  query = `curl http://wger.de/api/v2/exercise/?language=2`
  result = JSON.parse(query)
  random = 1+ rand(10)
  description = result["results"][random]["description"]
  final_description = {description: description, date: DateTime.now}
  @exercise = current_user.exercises.new(final_description)
  if @exercise.save
    erb :'/users/show'
  else
    @errors = exercises.errors.full_messages
    erb :'/exercises/new' 
  end
end