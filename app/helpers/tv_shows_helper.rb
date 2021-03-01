module TvShowsHelper

    def currently_airing?
        if @show.currently_airing
            "Currently airing"
        else
            "Not currently airing"
        end
    end

    def has_characters
        @show.characters.length > 0
    end

    def display_edit_review(review)
        if current_user == review.user 
            link_to "(edit review)", edit_review_path(review)
        end
    end

    def display_delete_show(show)
        if show.creator == current_user
            button_to "Delete show", tv_show_path(show), :method => :delete
        end
    end

    def display_add_character(show)
        if !show
            link_to "Create a new character here", new_character_path  
        end
    end

    def populated_end_date(show, f)
        if show.end_date
            f.text_field :end_date, value: show.dateform(show.end_date)
        else
            f.text_field :end_date
        end
    end

end
