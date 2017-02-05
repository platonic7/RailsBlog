require 'rails_helper'

RSpec.describe Customer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"


  # describe Customer do
  #   it "should " do
  #     customer = Customer.new(
  #         family_name: '山田', given_name: '太郎',
  #         family_name_kana: 'ヤマダ', given_name_kana: 'タロウ'
  #     )
  #     customer.family_name = 111
  #     expect(customer).to be_valid
  #   end
  # end

  describe Customer do
    customers = [
        "family_name", "given_name", "family_name_kana", "given_name_kana"
    ]

    # %w{family_name given_name family_name_kana given_name_kana}.each do |column_name|
    customers.each do |column_name|
      specify "#{column_name} は空であってはならない" do
        customer = Customer.new(
            family_name: '山田', given_name: '太郎',
            family_name_kana: 'ヤマダ', given_name_kana: 'タロウ'
        )
        customer[column_name] = ''
        expect(customer).not_to be_valid
        expect(customer.errors[column_name]).to be_present
      end
    end
  end
end