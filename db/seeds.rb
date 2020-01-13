User.destroy_all
puts "Creating users"

u1 = User.create! name:'yanni', email: 'yanni@test.com', password: 'chicken', admin: 'true'

puts "Created #{ User.count } users."

# Character.destroy_all
# puts "Creating characters"
#
# c1 = Character.create! name: 'Woahmen', user_id: u1.id
#
# puts "Linked #{ Character.count } characters. "
