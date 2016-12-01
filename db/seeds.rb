require 'faker'
# delete all records from all tables in database
User.delete_all
Exercise.delete_all

users = 20.times.map do
  User.create!( 
    :email      => Faker::Internet.email,
    :username  => Faker::Name.name,
    :password   => 'password' )
end

Exercise.create(description: "Do as many crunches as you can!", date: "2017-05-22 12:00", user_id: 1)
Exercise.create(description: "Do as many pushups as you can!", date: "2017-05-22 12:00", user_id: 2)
Exercise.create(description: "Plank for a minute!", date: "2017-05-22 12:00", user_id: 3)
Exercise.create(description: "Do as many dips on a chair as you can!", date: "2017-05-22 12:00", user_id: 1)