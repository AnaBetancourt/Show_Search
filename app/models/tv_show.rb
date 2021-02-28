class TvShow < ApplicationRecord
    has_many :reviews
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :creator, class_name: "User" 
    belongs_to :editor, class_name: "User"

    validates :name, :synopsis, :start_date, presence: :true
    validates :name, uniqueness: :true
    

    def dateform(date)
        date.strftime("%Y-%m-%d")
    end

end
