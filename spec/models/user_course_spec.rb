require "rails_helper"

RSpec.describe UserCourse, type: :model do
  context "column" do
    include_examples "have db column", :progress, :integer
    include_examples "have db column", :start_date, :date
    include_examples "have db column", :end_date, :date
    include_examples "have db column", :course_id, :integer
    include_examples "have db column", :user_id, :integer
  end

  context "associations" do
    include_examples "association belongs to examples", :user
    include_examples "association belongs to examples", :course
  end

  context "validates" do
    user = User.new name: "HC", display_name: "HCXD", phone: "099",
      avatar: "HCXD", address: "HT-HN", role: "Admin"

    course = Course.new name: "Rails",
      detail: "Ruby on Rails", category: "practice"

    user_course = UserCourse.new progress: 10, start_date: "2018-03-03",
      end_date: "2018-03-04", user: user, course: course

    include_examples "validation examples", user_course
  end
end
