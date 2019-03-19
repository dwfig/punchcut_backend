class User < ApplicationRecord
  has_many :roles
  has_many :articles, through: :roles
  validates :email, uniqueness: true
  has_secure_password
end
