require 'spec_helper'

describe "incidents/index" do
  before(:each) do
    assign(:incidents, [
      stub_model(Incident),
      stub_model(Incident)
    ])
  end

  it "renders a list of incidents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
