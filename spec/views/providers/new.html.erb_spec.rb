require 'spec_helper'

describe "providers/new" do
  before(:each) do
    assign(:provider, stub_model(Provider,
      :name => "MyString",
      :family_unit_id => 1
    ).as_new_record)
  end

  it "renders new provider form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => providers_path, :method => "post" do
      assert_select "input#provider_name", :name => "provider[name]"
      assert_select "input#provider_family_unit_id", :name => "provider[family_unit_id]"
    end
  end
end
