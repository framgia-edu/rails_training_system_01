RSpec.shared_examples "association has many examples" do |object_class, object_association|
  it "should have many" do
    object = object_class.reflect_on_association object_association
    expect(object.macro).to eq :has_many
  end
end
