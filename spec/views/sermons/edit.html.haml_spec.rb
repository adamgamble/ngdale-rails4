require 'spec_helper'

describe "sermons/edit" do
  before(:each) do
    @sermon = assign(:sermon, stub_model(Sermon,
      :title => "MyString",
      :body => "MyText",
      :summary => "MyText"
    ))
  end

  it "renders the edit sermon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sermon_path(@sermon), "post" do
      assert_select "input#sermon_title[name=?]", "sermon[title]"
      assert_select "textarea#sermon_body[name=?]", "sermon[body]"
      assert_select "textarea#sermon_summary[name=?]", "sermon[summary]"
    end
  end
end
