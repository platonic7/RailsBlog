class Mycontact < ApplicationRecord
  # validates :name, presence: { message: '와 필수항목 입니다!'}
  validates :age, numericality: { message: '와 숫자로 입력해 주세요!' }
  # validates :nationality, inclusion: { in: [true, false], message: '와 뭘까 ' }
end