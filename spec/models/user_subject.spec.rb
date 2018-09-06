require "rails_helper"

RSpec.describe UserSubject, type: :model do
  context "columns" do
    it {should have_db_column(:progress).of_type :integer}
    it {should have_db_column(:status).of_type :integer}
    it {should have_db_column(:start_date).of_type :date}
    it {should have_db_column(:end_date).of_type :date}
    it {should have_db_column(:user_id).of_type :integer}
    it {should have_db_column(:subject_id).of_type :integer}
    it {should have_db_column(:user_course_id).of_type :integer}
  end

  context "associations" do
    it {should belong_to :user}
    it {should belong_to :subject}
    it {should belong_to :user_course}
    it "should have many user_reports" do
      user_subject = UserSubject.reflect_on_association :user_reports
      expect(user_subject.macro).to eq :has_many
    end
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

    it "is presence" do
      expect(user_course).to be_valid
    end

    it {should define_enum_for(:status).with [:active, :unactive]}
  end
end
