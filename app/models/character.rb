class Character < ApplicationRecord
    belongs_to :actor
    belongs_to :tv_show
    belongs_to :creator, class_name: "User" 
    belongs_to :editor, class_name: "User"
    # accepts_nested_attributes_for :actor
    # accepts_nested_attributes_for :tv_show

    validates :name, :bio, presence: :true
    validates :name, uniqueness: true

    def actor_attributes=(attr)
        if Actor.find_by(name: attr[:name])
            binding.pry
            a = Actor.find_by(name: attr[:name])
            self.actor = a
        else
            # binding.pry
        end
    end

    def tv_show_attributes=(attr)
        if !!TvShow.find_by(name: attr[:name])
            s = TvShow.find_by(name: attr[:name])
            self.tv_show = s
        else
            show = TvShow.create(attr)
            binding.pry
        end
    end
    
end
