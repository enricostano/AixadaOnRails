require 'spec_helper'

describe "incident_types/index" do
  before(:each) do
    assign(:incident_types, [
      stub_model(IncidentType,
        :description => "Description",
        :definition => "MyText"
      ),
      stub_model(IncidentType,
        :description => "Description",
        :definition => "MyText"
      )
    ])
  end

  it "renders a list of incident_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
