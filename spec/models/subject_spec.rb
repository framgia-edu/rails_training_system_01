require "rails_helper"

RSpec.describe Subject, type: :model do
  context "column" do
    include_examples "have db column", :name, :string
    include_examples "have db column", :detail, :string
    include_examples "have db column", :status, :integer
    include_examples "have db column", :category, :integer
  end

  context "associations" do
    include_examples "association has many examples", Subject, :user_subjects
    include_examples "association has many examples", Subject, :course_subjects
  end

  context "validates" do
    subject = FactoryBot.create :subject
    include_examples "validation examples", subject
    it {should define_enum_for(:status).with [:active, :unactive]}
    it {should define_enum_for(:category).with %i(git ruby rails)}
  end
end
