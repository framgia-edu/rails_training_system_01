require "rails_helper"

RSpec.describe UserReport, type: :model do
  context "column" do
    include_examples "have db column", :title, :string
    include_examples "have db column", :content, :string
    include_examples "have db column", :user_subject_id, :integer
    include_examples "have db column", :user_id, :integer
  end
  
  context "associations" do
    include_examples "association belongs to examples", :user
    include_examples "association belongs to examples", :user_subject
  end

  context "validates" do
    user = User.new name: "HC", display_name: "HCXD", phone: "099",
      avatar: "HCXD", address: "HT-HN", role: "Admin"
    course = Course.new name: "Rails",
      detail: "Ruby on Rails", category: "practice"
    subject = Subject.new name: "Rails", detail: "Rails Girl",
      status: "active", category: "git"
    user_course = UserCourse.new progress: 10, start_date: "2018-03-03",
      end_date: "2018-03-04", user: user, course: course
    user_subject = UserSubject.new progress: 10, status: 0,
      start_date: "2018-03-03", end_date: "2018-03-04",
      user: user, subject: subject, user_course: user_course
    user_report = UserReport.new title: "Huyen Cherry",
      content: "Huyen Cherry Xinh Dep", user: user,
      user_subject: user_subject

    include_examples "validation examples", user_report
  end
end
