require "rails_helper"

RSpec.describe User, type: :model do
  let(:user) {FactoryBot.create :user}
  subject {user}

  context "columns" do
    it {should have_db_column(:name).of_type :string}
    it {should have_db_column(:display_name).of_type :string}
    it {should have_db_column(:phone).of_type :string}
    it {should have_db_column(:avatar).of_type :string}
    it {should have_db_column(:address).of_type :string}
    it {should have_db_column(:trainee_type).of_type :integer}
    it {should have_db_column(:role).of_type :string}
    it {should have_db_column(:email).of_type :string}
    it {should have_db_column(:encrypted_password).of_type :string}
    it {should have_db_column(:reset_password_token).of_type :string}
  end

  context "associations" do
    it {expect(user).to have_many(:user_courses).dependent :destroy}
    it {expect(user).to have_many(:user_reports).dependent :destroy}
    it {expect(user).to have_many(:user_subjects).dependent :destroy}

    it "should have many user_courses" do
      user = User.reflect_on_association :user_courses
      expect(user.macro).to eq :has_many
    end
    it "should have many user_reports" do
      user = User.reflect_on_association :user_reports
      expect(user.macro).to eq :has_many
    end
    it "should have many user_subjects" do
      user = User.reflect_on_association :user_subjects
      expect(user.macro).to eq :has_many
    end
  end

  context "validates" do
    it "is presence" do
      expect(user).to be_valid
    end

    it {should define_enum_for(:role).with [:Admin, :Trainer, :Trainee]}
    it {should define_enum_for(:trainee_type).with %i(practice open intern)}
  end
end
