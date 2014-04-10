require 'spec_helper'

describe "parks/index" do
  before(:each) do
    assign(:parks, [
      stub_model(Park,
        :type => "Type",
        :location => "MyText",
        :category => "Category"
      ),
      stub_model(Park,
        :type => "Type",
        :location => "MyText",
        :category => "Category"
      )
    ])
  end

  it "renders a list of parks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
