require 'spec_helper'

describe "sermons/new" do
  before(:each) do
    assign(:sermon, stub_model(Sermon,
      :title => "MyString",
      :body => "MyText",
      :summary => "MyText"
    ).as_new_record)
  end

  it "renders new sermon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sermons_path, "post" do
      assert_select "input#sermon_title[name=?]", "sermon[title]"
      assert_select "textarea#sermon_body[name=?]", "sermon[body]"
      assert_select "textarea#sermon_summary[name=?]", "sermon[summary]"
    end
  end
end
