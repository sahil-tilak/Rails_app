class Driver < ApplicationRecord
	has_many :rides
	validates :contact_number, length: { is: 10}
end
