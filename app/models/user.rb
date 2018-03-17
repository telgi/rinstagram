class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true,
                       length: { minimum: 5 }
end
