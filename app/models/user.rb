class User < ApplicationRecord
  has_secure_password
  has_many :actors
  has_many :tvshows
  has_many :reviews

end
