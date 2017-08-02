class User < ApplicationRecord
  VALID_NAME_REGEX = /[A-z0-9]{3,18}/
  validates :name, presence: true, length: { maximum: 18 },
              format: { with: VALID_NAME_REGEX },
              uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
