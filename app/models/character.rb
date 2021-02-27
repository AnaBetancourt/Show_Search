class Character < ApplicationRecord
    belongs_to :actor
    belongs_to :tv_show
    belongs_to :creator, class_name: "User" 
    belongs_to :editor, class_name: "User"

    validates :name, :bio, presence: :true
    validates :name, uniqueness: true
end
