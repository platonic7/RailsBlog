require 'rails_helper'

RSpec.describe "mycontacts/edit", type: :view do
  before(:each) do
    @mycontact = assign(:mycontact, Mycontact.create!(
      :name => "MyText",
      :age => 1,
      :nationality => false,
      :mail => "MyText"
    ))
  end

  it "renders the edit mycontact form" do
    render

    assert_select "form[action=?][method=?]", mycontact_path(@mycontact), "post" do

      assert_select "textarea#mycontact_name[name=?]", "mycontact[name]"

      assert_select "input#mycontact_age[name=?]", "mycontact[age]"

      assert_select "input#mycontact_nationality[name=?]", "mycontact[nationality]"

      assert_select "textarea#mycontact_mail[name=?]", "mycontact[mail]"
    end
  end
end
