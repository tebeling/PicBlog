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
