class User < ApplicationRecord
  has_many :created_actors, foreign_key: "creator_id", class_name: "Actor"
  has_many :edited_actors, foreign_key: "editor_id", class_name: "Actor"
  has_many :created_tv_shows, foreign_key: "creator_id", class_name: "TvShow"
  has_many :edited_tv_shows, foreign_key: "editor_id", class_name: "TvShow"
  has_many :created_characters, foreign_key: "creator_id", class_name: "Character"
  has_many :edited_characters, foreign_key: "editor_id", class_name: "Character"
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
