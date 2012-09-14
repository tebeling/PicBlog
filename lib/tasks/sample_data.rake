namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "User",
                         email: "user@user.com",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)

  end
end

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do


    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end
end
