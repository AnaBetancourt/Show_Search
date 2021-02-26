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

end
