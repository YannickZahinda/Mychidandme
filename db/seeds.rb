user = User.create!(email: "mwabana@test.com", password: "123456", is_admin: true)
user.blogs.create!(title: "First blog", body: "Hey there this is my first blog")