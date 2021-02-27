class Actor < ApplicationRecord
    has_many :characters
    has_many :tv_shows, through: :characters
    belongs_to :creator, class_name: "User" 
    belongs_to :editor, class_name: "User"

    validates :name, :age, presence: :true
    validates :name, uniqueness: true
end
