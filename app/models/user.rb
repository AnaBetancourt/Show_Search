class User < ApplicationRecord
  has_many :actors
  has_many :tv_shows
  has_many :characters
  has_many :reviews
  has_secure_password

  validates :name, :email, presence: :true
  validates :email, uniqueness: :true

  def self.create_from_omniauth(auth)
    User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.password = SecureRandom.hex(10)
    end
  end

end
