require "rails_helper"

RSpec.describe UserSubject, type: :model do
  context "column" do
    include_examples "have db column", :progress, :integer
    include_examples "have db column", :status, :integer
    include_examples "have db column", :start_date, :date
    include_examples "have db column", :end_date, :date
    include_examples "have db column", :user_id, :integer
    include_examples "have db column", :subject_id, :integer
    include_examples "have db column", :user_course_id, :integer
  end

  context "associations" do
    include_examples "association belongs to examples", :user
    include_examples "association belongs to examples", :subject
    include_examples "association belongs to examples", :user_course
    include_examples "association has many examples", UserSubject, :user_reports
  end

  context "validates" do
    user = User.new name: "HC", display_name: "HCXD", phone: "099",
      avatar: "HCXD", address: "HT-HN", role: "Admin"
    subject = Subject.new name: "Rails", detail: "Rails Girl",
      status: "active", category: "git"
    course = Course.new name: "Rails",
      detail: "Ruby on Rails", category: "practice"
    user_course = UserCourse.new progress: 10,
      start_date: "2018-03-03", end_date: "2018-03-04",
      user: user, course: course
    user_subject = UserSubject.new progress: 10, status: "active",
      start_date: "2018-03-03", end_date: "2018-03-04",
      user: user, subject: subject, user_course: user_course

    include_examples "validation examples", user_subject
    it {should define_enum_for(:status).with [:active, :unactive]}
  end
end
