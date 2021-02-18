class Character < ApplicationRecord
    belongs_to :actor
    belongs_to :tvshow

    validates :name :age, presence: :true
    validates :name, uniqueness: true
end
