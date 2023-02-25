# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'

# Create 10 fake users
10.times do
  User.create(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: Faker::Internet.password(min_length: 8),
    profile_img: Faker::Avatar.image(size: "200x200", set: "set4"),
    cover_img: Faker::Placeholdit.image(size: "800x400"),
    bio: Faker::Lorem.paragraph
  )
end

10.times do
    User.create(
      username: Faker::Internet.username,
      email: Faker::Internet.email,
      password: Faker::Internet.password(min_length: 8),
      profile_img: Faker::Avatar.image(size: "200x200", set: "set1"),
      cover_img: Faker::Placeholdit.image(size: "800x400"),
      bio: Faker::Lorem.paragraph
    )
  end

15.times do
    Acorn.create(
      content:Faker::Movies::Hackers.quote,
      date_created: Faker::Date.between(from: 1.year.ago, to: Date.today),
      img: Faker::Placeholdit.image(size: "300x300"),
      link: Faker::Internet.url,
      reply: false,
      user: User.all.sample
    )
  end

  15.times do
    Acorn.create(
      content:Faker::Movies::BackToTheFuture.quote,
      date_created: Faker::Date.between(from: 1.year.ago, to: Date.today),
      img: Faker::Placeholdit.image(size: "300x300"),
      link: Faker::Internet.url,
      reply: false,
      user: User.all.sample
    )
  end

  15.times do
    Acorn.create(
      content:Faker::Movies::PrincessBride.quote,
      date_created: Faker::Date.between(from: 1.year.ago, to: Date.today),
      img: Faker::Placeholdit.image(size: "300x300"),
      link: Faker::Internet.url,
      reply: false,
      user: User.all.sample
    )
  end

  15.times do
    Acorn.create(
      content:Faker::Movies::StarWars.quote,
      date_created: Faker::Date.between(from: 1.year.ago, to: Date.today),
      img: Faker::Placeholdit.image(size: "300x300"),
      link: Faker::Internet.url,
      reply: false,
      user: User.all.sample
    )
  end
