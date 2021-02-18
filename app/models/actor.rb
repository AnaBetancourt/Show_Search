class Actor < ApplicationRecord
    has_many :characters
    has_many :tvshows, through: :characters
    belongs_to :user

    validates :name :age, presence: :true
    validates :name, uniqueness: true
end
