require 'spec_helper'

describe "incidents/edit" do
  before(:each) do
    @incident = assign(:incident, stub_model(Incident))
  end

  it "renders the edit incident form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => incidents_path(@incident), :method => "post" do
    end
  end
end
