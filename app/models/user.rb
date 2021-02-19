class User < ApplicationRecord
  has_many :actors
  has_many :tv_shows
  has_many :reviews
  has_secure_password

  validates :name, :username, :password_digest, presence: :true
  validates :username, uniqueness: :true

end
