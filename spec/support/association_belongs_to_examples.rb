RSpec.shared_examples "association belongs to examples" do |object_association|
  it {should belong_to object_association}
end
