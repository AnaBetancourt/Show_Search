class TvShow < ApplicationRecord
    has_many :reviews
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :user

    validates :name, :synopsis, presence: :true
    validates :name, uniqueness: :true

end
