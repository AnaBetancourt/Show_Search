module CharactersHelper

    def display_show_fields(show, f)
        if show
            f.hidden_field :tv_show_id
        else
            render partial: 'show_select', locals: {f: f}
        end
    end

end
