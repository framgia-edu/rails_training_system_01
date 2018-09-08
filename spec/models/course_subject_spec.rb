require "rails_helper"

RSpec.describe CourseSubject, type: :model do
  context "column" do
    include_examples "have db column", :course_id, :integer
    include_examples "have db column", :subject_id, :integer
  end

  context "associations" do
    include_examples "association belongs to examples", :course
    include_examples "association belongs to examples", :subject
  end

  context "validates" do
    course = Course.new name: "Rails",
      detail: "Ruby on Rails", category: "practice"
    subject = Subject.new name: "Rails", detail: "Rails Girl",
      status: "active", category: "git"
    course_subject = CourseSubject.new course: course, subject: subject

    include_examples "validation examples", course_subject
  end
end
