require 'spec_helper'

describe "incident_types/new" do
  before(:each) do
    assign(:incident_type, stub_model(IncidentType,
      :description => "MyString",
      :definition => "MyText"
    ).as_new_record)
  end

  it "renders new incident_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => incident_types_path, :method => "post" do
      assert_select "input#incident_type_description", :name => "incident_type[description]"
      assert_select "textarea#incident_type_definition", :name => "incident_type[definition]"
    end
  end
end
