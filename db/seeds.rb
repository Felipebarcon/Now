# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying Users"
User.destroy_all
puts "Destroying Activities"
Activity.destroy_all
puts "Destroying Level"
Level.destroy_all
puts "Destroying Events"
Event.destroy_all

puts "Creating users"
users = User.create([
    {email: "felipe@email.com", password: "password", username: "felipe"},
    {email: "alexandre@email.com", password: "password", username: "alexandre"},
    {email: "anais@email.com", password: "password", username: "anais"}
  ])

puts "Creating Activities"
activities = Activity.create([
    {name: "Sport"},
    {name: "Finance"},
    {name: "Lecture"},
    {name: "Meditation"},
    {name: "Projects"}
  ])

puts "Creating levels"
levels = Level.create([
    {name: "Beginner", frequency: 2},
    {name: "Medium", frequency: 4},
    {name: "Hard", frequency: 6},
  ])

puts "Creating events"
event1 = Event.create(start_time: DateTime.new(2022,3,26,17), end_time: DateTime.new(2022,3,26,19), user_id: User.first.id, location: "Genève", description: "Running", activity_id: Activity.first.id)
event2 = Event.create(start_time: DateTime.new(2022,3,26,18), end_time: DateTime.new(2022,3,26,19), user_id: User.first.id, location: "Genève", description: "Running", activity_id: Activity.first.id)
