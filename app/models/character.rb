class Character < ApplicationRecord
    belongs_to :actor
    belongs_to :tv_show

    validates :name, :birthday, presence: :true
    validates :name, uniqueness: true
end
