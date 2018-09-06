RSpec.shared_examples "dependent example" do |object, object_association|
  it {expect(object).to have_many(object_association).dependent :destroy}
end
