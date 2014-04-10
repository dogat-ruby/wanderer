require 'spec_helper'

describe "parks/edit" do
  before(:each) do
    @park = assign(:park, stub_model(Park,
      :type => "",
      :location => "MyText",
      :category => "MyString"
    ))
  end

  it "renders the edit park form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", park_path(@park), "post" do
      assert_select "input#park_type[name=?]", "park[type]"
      assert_select "textarea#park_location[name=?]", "park[location]"
      assert_select "input#park_category[name=?]", "park[category]"
    end
  end
end
