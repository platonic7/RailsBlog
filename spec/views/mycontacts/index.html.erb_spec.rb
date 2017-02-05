require 'rails_helper'

RSpec.describe "mycontacts/index", type: :view do
  before(:each) do
    assign(:mycontacts, [
      Mycontact.create!(
        :name => "MyText",
        :age => 2,
        :nationality => false,
        :mail => "MyText"
      ),
      Mycontact.create!(
        :name => "MyText",
        :age => 2,
        :nationality => false,
        :mail => "MyText"
      )
    ])
  end

  it "renders a list of mycontacts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
