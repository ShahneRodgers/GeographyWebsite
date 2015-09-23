require 'bcrypt'

class User < ActiveRecord::Base
	attr_accessor :password
	
	validates :username, :presence => true, :uniqueness => true, :length => {:in => 3..20}
	validates :password, :confirmation=>true
	validates :countries, :confirmation=>true
	validate :password_ok?

	before_save :encrypt_password
	after_save :clear_password

	#Creates a salt for the user and encrypts their password with this.
	def encrypt_password
		if password.present?
			self.salt = BCrypt::Engine.generate_salt
			self.encrypted_password = BCrypt::Engine.hash_secret(password, salt)
		end
	end

	#Checks that the password is at least 6 characters and contains
	#at least one letter and one number.
	def password_ok?
		if !password.present? || password.length < 6
			@errors.add(:password, "must be at least 6 characters");
		elsif ! password.match(/.*[0-9].*/)
			@errors.add(:password, "must contain at least one number");
		elsif not password.match(/.*\w.*/)
			@error.add(:password, "must contain at least one character");
		end
	end

	#The plaintext password should not be stored.
	def clear_password
		self.password = nil
	end

	#Checks that the given password matches
	def match_password(password)
		return encrypted_password == BCrypt::Engine.hash_secret(password, salt)
	end

	#A class method to return the user if correct details are given.
	def User.authenticate(username, password)
		user = User.find_by_username(username)
		if user && user.match_password(password)
			return user
		elsif user
			user.errors.add(:password, "is incorrect")
		else
			user = User.new()
			user.errors.add(:username, "could not be found")
		end
		return user
	end
end
