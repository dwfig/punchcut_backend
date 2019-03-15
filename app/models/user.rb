class User < ApplicationRecord
  has_many :roles
  has_many :articles, through: :roles
end
