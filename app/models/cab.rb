class Cab < ApplicationRecord
	has_many :rides
	include ActiveModel::Validations
	validates_with RegistrationNumberValidation
end

