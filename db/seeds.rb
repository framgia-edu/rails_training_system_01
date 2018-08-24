Admin.create!(name: "Trainer 1", email: "vdmanh107@gmail.com",
  password: "123456", password_confirmation: "123456")

Admin.create!(name: "Huyen Cherry", email: "huyencherry13796@gmail.com",
  password: "123456", password_confirmation: "123456")

Trainee.create!(name: "Manh Khong Dau", email: "manhkhongdau@gmail.com",
  password: "123456", password_confirmation: "123456")

Course.create!(
  name: "Ruby on Rails training",
  detail: Faker::Lorem.sentence(3),
  category: Faker::Number.between(0,1)
)

Course.create!(
  name: "PHP essential",
  detail: Faker::Lorem.sentence(3),
  category: Faker::Number.between(0,1)
)

Course.create!(
  name: "How to master git in 10 days",
  detail: Faker::Lorem.sentence(3),
  category: Faker::Number.between(0,1)
)

Course.create!(
  name: "Algorithm fundamental",
  detail: Faker::Lorem.sentence(3),
  category: Faker::Number.between(0,1)
)

Course.create!(
  name: "Another random course",
  detail: Faker::Lorem.sentence(3),
  category: Faker::Number.between(0,1)
)

# 10.times do
#   Course.create!(
#     name: Faker::Cat.name,
#     detail: Faker::Lorem.sentence(3),
#     category: Faker::Number.between(0,1)
#   )
# end

# 2.times do
#   UserCourse.create!(
#     progress: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100].sample,
#     start_date: Faker::Date.between(20.days.ago, Date.today),
#     end_date: Faker::Date.between(Date.today, 20.days.from_now),
#     user_id: 1,
#     course_id: rand(1..10)
#   )
# end

# 10.times do
#   Subject.create!(
#     name: Faker::Cat.name,
#     detail: Faker::Lorem.sentence(3),
#     category: Faker::Number.between(0,1),
#     status: Faker::Number.between(0,1)
#   )
# end

# 2.times do
#   UserSubject.create!(
#     progress: [10, 20, 30, 40, 50, 60, 70, 80, 90, 100].sample,
#     status: Faker::Number.between(0,1),
#     start_date: Faker::Date.between(20.days.ago, Date.today),
#     end_date: Faker::Date.between(Date.today, 20.days.from_now),
#     user_id: 1,
#     subject_id: rand(1..10),
#     user_course_id: rand(1..2)
#   )
# end

# 5.times do
#   UserReport.create!(
#     user_id: 1,
#     user_subject_id: rand(1..2),
#     title: "HC",
#     content: "Huyền Cherry xinh đẹp"
#   )
# end
