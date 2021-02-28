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
        cap_name = []
        attr[:name].split(" ").map do |i|
            cap_name << i.capitalize
        end
        
        if Actor.find_by(name: cap_name.join(" "))
            a = Actor.find_by(name: cap_name.join(" "))
            self.actor = a
        else
            a = Actor.create(attr)
            a.editor_id = attr[:creator_id]
            a.characters << self
        end
    end

    def tv_show_attributes=(attr)
        cap_name = []
        attr[:name].split(" ").map do |i|
            cap_name << i.capitalize
        end
        
        if !!TvShow.find_by(name: cap_name.join(" "))
            s = TvShow.find_by(name: cap_name.join(" "))
            self.tv_show = s
        else
            s = TvShow.create(attr)
            s.editor_id = attr[:creator_id]
            s.characters << self
        end
    end
    
end
