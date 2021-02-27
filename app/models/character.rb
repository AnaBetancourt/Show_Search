class Character < ApplicationRecord
    belongs_to :actor
    belongs_to :tv_show
    belongs_to :user

    validates :name, :bio, presence: :true
    validates :name, uniqueness: true
end
