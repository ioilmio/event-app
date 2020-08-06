# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
19.times do |n|
  user = "friend-#{n}"
  mail = "#{user}@mail.com"
  password = 'password'
  password_confirmation = 'password'
  User.create!(name: user, email: mail, password: password, password_confirmation: password_confirmation)
end

20.times do |n|
  title = "event-#{n}"
  description = "event-#{n}"
  location = "event-#{n}-location"
  date = DateTime.now - (rand * 30)
  creator_id = rand(1..18)
  Event.create!(title: title, description: description, location: location, creator_id: creator_id, date: date)
end
20.times do |n|
  title = "event-#{n}"
  description = "event-#{n}"
  location = "event-#{n}-location"
  date = DateTime.now + (rand * 30)
  creator_id = rand(1..18)
  Event.create!(title: title, description: description, location: location, creator_id: creator_id, date: date)
end

20.times do
  event_id = rand(1..18)
  user_id = rand(1..18)
  Attendance.create!(attended_event_id: event_id, attendee_id: user_id)
end
