require 'rails_helper'

RSpec.describe Mycontact, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe Mycontact do
    # let(:mycontact) {
    #   mycontact =
    #   Mycontact.new(
    #       age: '山田'
    #   )
    # }
    it "should " do
      mycontact = Mycontact.new(
          age: '山田'
      )
      mycontact.age = 11

      expect(mycontact).to be_valid
    end
  end

  # describe Mycontact do
  #   customers = [
  #       :age, :name
  #   ]
  #
  #   customers.each do |column_name|
  #     specify "#{column_name} は空であってはならない" do
  #       customer = Mycontact.new()
  #       customer[column_name] = 11
  #       expect(customer).to be_valid
  #       # expect(customer.errors[column_name]).to be_present
  #     end
  #   end
  # end

end

