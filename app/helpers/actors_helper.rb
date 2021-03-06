module ActorsHelper

    def display_header_actors(show)
        if show
            tag.h1("#{show.name}'s Actors")
        else
            tag.h1("Actors")
        end
    end

    def display_add_actor(show)
        if !show
            link_to "Create a new actor here", new_actor_path  
        end
    end

    def display_delete_actor(actor)
        if actor.creator == current_user
            button_to "Delete Actor", actor_path(@actor), :method => :delete
        end
    end

end
