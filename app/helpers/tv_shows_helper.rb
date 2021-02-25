module TvShowsHelper

    def currently_airing?(show)

        if show.currently_airing
            "Currently airing"
        else
            "Not currently airing"
        end
    end

end
