require 'rails_helper'

RSpec.describe "mycontacts/show", type: :view do
  before(:each) do
    @mycontact = assign(:mycontact, Mycontact.create!(
      :name => "MyText",
      :age => 2,
      :nationality => false,
      :mail => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
