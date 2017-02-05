require 'rails_helper'

RSpec.describe "mycontacts/new", type: :view do
  before(:each) do
    assign(:mycontact, Mycontact.new(
      :name => "MyText",
      :age => 1,
      :nationality => false,
      :mail => "MyText"
    ))
  end

  it "renders new mycontact form" do
    render

    assert_select "form[action=?][method=?]", mycontacts_path, "post" do

      assert_select "textarea#mycontact_name[name=?]", "mycontact[name]"

      assert_select "input#mycontact_age[name=?]", "mycontact[age]"

      assert_select "input#mycontact_nationality[name=?]", "mycontact[nationality]"

      assert_select "textarea#mycontact_mail[name=?]", "mycontact[mail]"
    end
  end
end
