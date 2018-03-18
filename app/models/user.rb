class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true,
                       length: { minimum: 5 }
  has_many :posts

  def to_s
    username
  end
end
