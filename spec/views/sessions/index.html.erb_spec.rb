require 'spec_helper'

describe "sessions/index" do
  before(:each) do
    assign(:sessions, [
      stub_model(Session,
        :name => "Name",
        :pasword => "Pasword"
      ),
      stub_model(Session,
        :name => "Name",
        :pasword => "Pasword"
      )
    ])
  end

  it "renders a list of sessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Pasword".to_s, :count => 2
  end
end
