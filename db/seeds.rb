5.times do |x|
  name = Faker::Name.name
  email = "example#{x}@gmail.com"
  password = "password"
  User.create!( name: name,
                email: email,
                password: password )
end

5.times do |x|
  title = Faker::Hacker.adjective.capitalize!
  body = Faker::Hacker.say_something_smart
  Post.create!( title: title,
                body: body,
                user_id: x+1 )
end
