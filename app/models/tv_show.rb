class TvShow < ApplicationRecord
    has_many :reviews
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :user
end
