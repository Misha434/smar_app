# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# メインのサンプルユーザーを1人作成する
User.create!(user_name: 'Tester',
             name:  "Example User",
             email: "example@railstutorial.org",
             birthday: "1990-11-1",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

# 追加のユーザーをまとめて生成する
99.times do |n|
  user_name = Faker::Name.first_name
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  birthday = Faker::Date.in_date_period
  password = "password"
  User.create!(user_name: user_name,
               name:  name,
               email: email,
               birthday: birthday,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end