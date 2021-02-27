class User < ApplicationRecord
  has_many :actors
  has_many :tv_shows
  has_many :reviews
  has_secure_password

  validates :name, :email, presence: :true
  validates :email, uniqueness: :true

end
