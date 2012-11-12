require 'spec_helper'

describe "incidents/new" do
  before(:each) do
    assign(:incident, stub_model(Incident).as_new_record)
  end

  it "renders new incident form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => incidents_path, :method => "post" do
    end
  end
end
