class UserRequest < ApplicationRecord
	validates :name,:village,:address,:loss_info,:loss_amount, presence: true
	validates :contact_no,length: { is: 10 }, uniqueness: true
	VALID_LOSS_AMOUNT_REGEX=/[^0]/
	validates :loss_amount, presence: true, format: { with: VALID_LOSS_AMOUNT_REGEX }
        VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
        validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
