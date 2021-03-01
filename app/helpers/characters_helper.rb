module CharactersHelper

    def display_show_fields(show, f)
        if show
            f.hidden_field :tv_show_id
        else
            render partial: 'show_select', locals: {f: f}
        end
    end

    def display_header(show)
        if show
            tag.h1("#{show.name}'s Characters")
        else
            tag.h1("Characters")
        end
    end

    def display_delete(character)
        if character.creator == current_user
            button_to "Delete Character", character_path(@character), :method => :delete
        end
    end

end
