User.destroy_all

puts "Creating users"

u1 = User.create! name:'yanni', email: 'yanni@test.com', password: 'chicken', admin: 'true'

puts "Created #{ User.count } users."
