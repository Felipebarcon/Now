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

users = User.create([
    {email: "felipe@email.com", password: "password", username: "felipe"},
    {email: "alexandre@email.com", password: "password", username: "alexandre"},
    {email: "anais@email.com", password: "password", username: "anais"}
  ])

activities = Activity.create([
    {name: "Sport"},
    {name: "Finance"},
    {name: "Lecture"},
    {name: "Meditation"},
    {name: "Projects"}
  ])
