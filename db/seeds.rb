# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
    user = User.new(name: 'user' + i.to_s, email: 'user' + i.to_s + '@user.com', password: 'user')
    unless user.save
      user  = User.find_by(name: 'user' + i.to_s)
    end
    p user
    micropost = user.microposts.build(content: 'I\'m ' + user.name + '. hello!' , user_id: user.id )

    micropost.save
end