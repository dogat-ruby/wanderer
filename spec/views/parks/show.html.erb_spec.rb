require 'spec_helper'

describe "parks/show" do
  before(:each) do
    @park = assign(:park, stub_model(Park,
      :type => "Type",
      :location => "MyText",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    rendered.should match(/MyText/)
    rendered.should match(/Category/)
  end
end
