User.destroy_all

puts "Creating users"

u1 = User.create! name:'yanni', email: 'yanni@test.com', password: 'chicken', admin: 'true'

puts "Created #{ User.count } users."


Character.destroy_all

puts "Creating characters"

c1 = Character.create! name: "Woahmen", server: "Arugal", spec: "Warlock", subspec: "SM-Ruin", user: u1

puts "#{Character.count} characters created"

Post.destroy_all

puts "Destroying Posts"
