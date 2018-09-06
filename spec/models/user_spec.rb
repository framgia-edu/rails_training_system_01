require "rails_helper"

RSpec.describe User, type: :model do
  context "column" do
    include_examples "have db column", :name, :string
    include_examples "have db column", :display_name, :string
    include_examples "have db column", :phone, :string
    include_examples "have db column", :avatar, :string
    include_examples "have db column", :address, :string
    include_examples "have db column", :trainee_type, :integer
    include_examples "have db column", :role, :string
    include_examples "have db column", :email, :string
    include_examples "have db column", :encrypted_password, :string
    include_examples "have db column", :reset_password_token, :string
  end
  
  context "associations" do
    user = User.new name: "HC", display_name: "HCXD", phone: "099",
      avatar: "HCXD", address: "HT-HN", role: "Admin",
      email: "HCXD1@gmail.com", password: "123456"
    include_examples "dependent example", user, :user_courses
    include_examples "dependent example", user, :user_reports
    include_examples "dependent example", user, :user_subjects

    include_examples "association has many examples", User, :user_courses
    include_examples "association has many examples", User, :user_reports
    include_examples "association has many examples", User, :user_subjects
  end

  context "validates" do
    user = User.new name: "HC", display_name: "HCXD", phone: "099",
      avatar: "HCXD", address: "HT-HN", role: "Admin",
      email: "HCXD@gmail.com", password: "123456"
    include_examples "validation examples", user
    it {should define_enum_for(:trainee_type).with %i(practice open intern)}
  end
end
