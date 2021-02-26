class TvShow < ApplicationRecord
    has_many :reviews
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :user

    validates :name, :synopsis, presence: :true
    validates :name, uniqueness: :true
    

    def dateform(date)
        date.strftime("%Y-%m-%d")
    end

    # def self.alphabetical
    #     self.order(name: :asc)
    # end

end
