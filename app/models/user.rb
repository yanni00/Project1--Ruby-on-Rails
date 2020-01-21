class User < ApplicationRecord
  has_many :posts

  has_many :characters

  has_secure_password

  validates :email, presence: true, uniqueness: true

  validates :name, presence: true

end
