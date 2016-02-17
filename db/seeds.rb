5.times do |x|
  name = Faker::Name.name
  email = "example#{x}@gmail.com"
  password = "password"
  @user = User.create!( name: name,
                email: email,
                password: password )
  5.times do |x|
    title = Faker::Hacker.adjective.capitalize!
    body = Faker::Hacker.say_something_smart
    author = @user.name
    @user.posts.build(author: author, title: title, body: body).save
  end

end



