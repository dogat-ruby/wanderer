require 'spec_helper'

describe "sessions/edit" do
  before(:each) do
    @session = assign(:session, stub_model(Session,
      :name => "MyString",
      :pasword => "MyString"
    ))
  end

  it "renders the edit session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", session_path(@session), "post" do
      assert_select "input#session_name[name=?]", "session[name]"
      assert_select "input#session_pasword[name=?]", "session[pasword]"
    end
  end
end
