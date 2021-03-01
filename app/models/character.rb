class Character < ApplicationRecord
    belongs_to :actor
    belongs_to :tv_show
    belongs_to :creator, class_name: "User" 
    belongs_to :editor, class_name: "User"

    validates :name, :bio, presence: :true
    validates :name, uniqueness: true

    def actor_attributes=(attr)
        if !attr[:name].blank?
            if Actor.find_by(name: capitalize_name(attr[:name]))
                a = Actor.find_by(name: capitalize_name(attr[:name]))
                self.actor = a
            else
                a = Actor.create(attr)
                a.editor_id = attr[:creator_id]
                self.actor = a
            end
        end
    end

    def tv_show_attributes=(attr)
        if !attr[:name].blank?
            if !!TvShow.find_by(name: capitalize_name(attr[:name]))
                s = TvShow.find_by(name: capitalize_name(attr[:name]))
                self.tv_show = s
            else
                s = TvShow.create(attr)
                s.editor_id = attr[:creator_id]
                self.tv_show = s
            end
        end
    end

    def self.alphabetical
        self.order(name: :asc)
    end
    
end
