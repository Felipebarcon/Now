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
    {name: "Motivated", frequency: 2},
    {name: "Very Motivated", frequency: 4},
    {name: "Super Motivated", frequency: 6},
  ])

puts "Creating events"
events = Event.create([
  {user_id: User.all.sample.id, address: "paris", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},

 {user_id: User.all.sample.id, address: "Zurich", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},

{user_id: User.all.sample.id, address: "Bangkok", start_time: DateTime.new(2022,4,22,17), end_time: DateTime.new(2022,4,22,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},

{user_id: User.all.sample.id, address: "Marseille", start_time: DateTime.new(2022,4,13,17), end_time: DateTime.new(2022,4,13,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},

{user_id: User.all.sample.id, address: "Bordeaux", start_time: DateTime.new(2022,4,25,17), end_time: DateTime.new(2022,4,25,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Zermatt", start_time: DateTime.new(2022,4,14,17), end_time: DateTime.new(2022,4,14,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Lucerne", start_time: DateTime.new(2022,5,1,17), end_time: DateTime.new(2022,5,1,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Berne", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Basel", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Interlaken", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Locarno", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Berlin", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Madrid", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Barcelona", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Aix-en-Provence", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Verbier", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Zug", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Milan", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Turin", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Lyon", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Strasbourg", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Nyon", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Vevey", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Sion", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Brig", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Saas Fee", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Chamonix", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Grison", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Tessin", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Argovie", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "India", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Sri Lanka", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Costa Rica", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Tokyo", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Sierre", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Coire", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Fribourg", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Neuchatel", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Begnins", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Yverdon", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Aigle", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Monthey", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Zurich", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Bienne", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Nendaz", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Crans-Montana", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Bulle", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Payerne", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "La Chaux-de-Fonds", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Orbe", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Chavornay", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Moudon", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Satigny", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Coppet", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Collonge-Bellerive", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Munich", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Vienne", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Le Caire", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Bologne", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Rome", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Ferrol", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Budapest", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Prague", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Varsovie", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Chicago", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Boston", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "San Diego", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "California", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Paolo Alto", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "San Francisco", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Ankara", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Athenes", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Malte", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Tunis", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Alger", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Rabat", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Seville", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Asturias", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Valence", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Grenade", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Mali", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "South Africa", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Togo", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Cameroun", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Bruxelles", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Amsterdam", start_time: DateTime.new(2022,5,10,17), end_time: DateTime.new(2022,5,10,19), description: "
Hi guys !!

We've booked a table tennis room for players of all levels from 6.30pm to 8.30pm.
Please read carefully the following information:

COVID19 rules:

Please send me your phone number by private message here if it's the first time that you join
Don't show up if you feel sick
Wash your hands regularly including before and after playing.
• Fee: CHF 10.- for two hours (not possible to pay for only one hour) to pay cash to the host when you arrive or by Twint scanning the QR code that the host will show you when you arrive.

• What to bring: Bring indoor sports shoes and sports clothes. We'll bring the rackets and the balls

• Access: Bus 8 until stop “Rive” and then walk up hill 10 seconds and turn left. Walk until you reach the corner of rue Jacques-Dalcroze and rue Ferdinand-Hodler you should see a big metal double door. It’s in there.

• Meeting point: Join us directly in the table tennis room, just push the door and let the tennis ball bounce guide you (if you can’t hear it, it’s the second room on the left after the entrance).", activity_id: Activity.all.sample.id},
  {user_id: User.all.sample.id, address: "Cologne", start_time: DateTime.new(2022,6,19,17), end_time: DateTime.new(2022,6,19,19), description: "
We are back guys !!

We have booked some outdoor tennis courts for players of all levels (we will play doubles with rotation) for 2 hours in the park des Evaux (Onex). Please read carefully the following information:

• Fee: CHF 20.- for two hours (not possible to pay only for one hour) to pay cash when you arrive or by twint by asking the host the QR code.

• What to bring: Bring a tennis racket (I may have some old rackets if you really need but please ask me first); I'll bring the balls. Bring also proper tennis shoes and sports clothes. Locker-room and showers might no be available due to Covid", activity_id: Activity.all.sample.id}
])
