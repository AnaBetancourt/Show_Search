class Actor < ApplicationRecord
    has_many :characters
    has_many :tvshows, through: :characters
    belongs_to :user
end
