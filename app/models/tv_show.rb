class TvShow < ApplicationRecord
    has_many :reviews
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :user

    validates :name, :currently_airing, presence: :true
    validates :name, uniqueness: :true
end
