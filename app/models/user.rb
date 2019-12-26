class User < ApplicationRecord
	has_many :ride_requests
	validates :first_name, :last_name, :email_id, presence: true
	validates :contact_no, uniqueness: true
	before_save do 
		self.first_name = self.first_name.titleize
		
	end
end
