class RegistrationNumberValidation < ActiveModel::Validator
	def validate(record)
		unless record.registration_number.match(/\A[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}\Z/)
			record.errors[:registration_number] << 'Not a registration number'
		end
	end
end


