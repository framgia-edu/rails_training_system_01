require "rails_helper"

RSpec.describe UserCourse, type: :model do
  context "columns" do
    it {should have_db_column(:progress).of_type :integer}
    it {should have_db_column(:start_date).of_type :date}
    it {should have_db_column(:end_date).of_type :date}
    it {should have_db_column(:course_id).of_type :integer}
    it {should have_db_column(:user_id).of_type :integer}
  end

  context "associations" do
    it {should belong_to :user}
    it {should belong_to :course}
  end

  context "validates" do
    user = User.new name: "HC", display_name: "HCXD", phone: "099",
      avatar: "HCXD", address: "HT-HN", role: "Admin"

    course = Course.new name: "Rails",
      detail: "Ruby on Rails", category: "practice"

    user_course = UserCourse.new progress: 10, start_date: "2018-03-03",
      end_date: "2018-03-04", user: user, course: course

    it "is presence" do
      expect(user_course).to be_valid
    end
  end
end
