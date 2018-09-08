require "rails_helper"

RSpec.describe Course, type: :model do
  context "column" do
    include_examples "have db column", :name, :string
    include_examples "have db column", :detail, :string
    include_examples "have db column", :category, :integer
  end

  context "associations" do
    include_examples "association has many examples", Course, :user_courses
    include_examples "association has many examples", Course, :course_subjects
  end

  context "validates" do
    course = FactoryBot.create :course
    include_examples "validation examples", course
    it {should define_enum_for(:category).with %i(practice open intern)}
  end
end
