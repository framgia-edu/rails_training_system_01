require "rails_helper"

RSpec.describe Subject, type: :model do
  let(:subject) {FactoryBot.create :subject}

  context "columns" do
    it {should have_db_column(:name).of_type :string}
    it {should have_db_column(:detail).of_type :string}
    it {should have_db_column(:status).of_type :integer}
    it {should have_db_column(:category).of_type :integer}
  end

  context "associations" do
    it "should have many user_subjects" do
      subject = Subject.reflect_on_association :user_subjects
      expect(subject.macro).to eq :has_many
    end
    it "should have many course_subjects" do
      subject = Subject.reflect_on_association :course_subjects
      expect(subject.macro).to eq :has_many
    end
  end

  context "validates" do
    it "is presence" do
      expect(subject).to be_valid
    end
    
    it {should define_enum_for(:status).with [:active, :unactive]}
    it {should define_enum_for(:category).with %i(git ruby rails)}
  end
end
