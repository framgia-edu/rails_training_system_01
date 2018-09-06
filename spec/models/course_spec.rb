require "rails_helper"

RSpec.describe Course, type: :model do
  let(:course) {FactoryBot.create :course}
  subject {course}

  context "columns" do
    it {should have_db_column(:name).of_type :string}
    it {should have_db_column(:detail).of_type :string}
    it {should have_db_column(:category).of_type :integer}
  end

  context "associations" do
    it "should have many user_courses" do
      course = Course.reflect_on_association :user_courses
      expect(course.macro).to eq :has_many
    end
    it "should have many course_subjects" do
      course = Course.reflect_on_association :course_subjects
      expect(course.macro).to eq :has_many
    end
  end

  context "validates" do
    it "is presence" do
      expect(course).to be_valid
    end
    
    it {should define_enum_for(:category).with [:practice, :open, :intern]}
    it {should define_enum_for(:category).with %i(practice open intern)}
  end
end
