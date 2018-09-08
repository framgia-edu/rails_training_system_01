RSpec.shared_examples "validation examples" do |object|
  it "is presence" do
    expect(object).to be_valid
  end
end
