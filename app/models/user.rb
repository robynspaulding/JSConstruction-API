class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :abouts
  has_many :Woodshops
  has_many :portfolios
end
