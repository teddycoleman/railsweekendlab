class User < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	has_secure_password

	def self.confirm (email, password)
		user = User.find_by(email: email)
		user.authenticate(password)
	end
end
