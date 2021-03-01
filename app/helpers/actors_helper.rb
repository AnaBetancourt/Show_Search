module ActorsHelper

    def display_header(show)
        if show
            tag.h1("#{show.name}'s Actors")
        else
            tag.h1("Actors")
        end
    end

    def display_add_character(show)
        if !show
            link_to "Create a new actor here", new_actor_path  
        end
    end

end
