users = Array.new(10) do
  User.create(name: "sf")
end

posts = Array.new(10) do
  Post.create(user: users.sample, title: 'sfs', body: 's')
end

10.times do
  users.each do |user|
    posts.each do |post|
      puts 'creating comment...'
      Comment.create(user: user, post: post, message: 'sdfs')
    end
  end
end
