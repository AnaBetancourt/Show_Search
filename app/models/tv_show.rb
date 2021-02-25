class TvShow < ApplicationRecord
    has_many :reviews
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :user

    validates :name, :synopsis, presence: :true
    validates :name, uniqueness: :true
    

    def sdate_readable
        self.start_date.strftime("%B %d, %Y")
    end

    def edate_readable
        self.end_date.strftime("%B %d, %Y")
    end

end
