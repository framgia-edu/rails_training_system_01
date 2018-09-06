require "rails_helper"

RSpec.describe CourseSubject, type: :model do
  context "columns" do
    it {should have_db_column(:course_id).of_type :integer}
    it {should have_db_column(:subject_id).of_type :integer}
  end

  context "associations" do
    it {should belong_to :course}
    it {should belong_to :subject}
  end

  context "validates" do
    course = Course.new name: "Rails",
      detail: "Ruby on Rails", category: "practice"

    subject = Subject.new name: "Rails", detail: "Rails Girl",
      status: "active", category: "git"
  
    course_subject = CourseSubject.new course: course, subject: subject
    
    it "is presence" do
      expect(course_subject).to be_valid
    end
  end
end
