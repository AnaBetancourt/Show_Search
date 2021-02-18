class Review < ApplicationRecord
    belongs_to :user
    belongs_to :tv_show

    validates :body, presence: :true
end
