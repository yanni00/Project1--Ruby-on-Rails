User.destroy_all

u1 = User.create! name:'yanni', email: 'yanni@test.com', password: 'chicken', admin: 'true'
c1 = Character.create! name:'Woahmen', user: u1
puts "Created #{ User.count } users."
puts "Linked #{ Character }s  "
