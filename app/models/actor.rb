class Actor < ApplicationRecord
    has_many :characters
    has_many :tv_shows, through: :characters
    belongs_to :user

    validates :name, :age, presence: :true
    validates :name, uniqueness: true
end
