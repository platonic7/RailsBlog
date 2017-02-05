require_relative '../../spec/model/user'


describe User do
  before(:each) do
    @user = User.new '이진서', '남자'
  end

  describe '#new' do
    it 'should ' do
      expect(@user).to be_an_instance_of(User)
    end
  end

  describe '#name' do
    it "이름은 제대로 반환 하는가 " do
      expect(@user.name).to eql('이진서1')
      expect(@user.sex).to eql('남자')
    end
  end


end