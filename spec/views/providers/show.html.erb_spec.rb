require 'spec_helper'

describe "providers/show" do
  before(:each) do
    @provider = assign(:provider, stub_model(Provider,
      :name => "Name",
      :family_unit_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
