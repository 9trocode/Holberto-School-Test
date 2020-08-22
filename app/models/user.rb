# frozen_string_literal: true

class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_save { self.profile_url = 'https://api.adorable.io/avatars/203/' + email.downcase }
  has_secure_password
  validates :name,
            presence: true
  validates :email,
            presence: true,
            uniqueness: { message: 'already exists' },
            email_format: { message: 'Email address is not valid' }
  validates :password,
            length: { minimum: 8 },
            presence: { message: 'Please enter password' },
            allow_nil: true
end
