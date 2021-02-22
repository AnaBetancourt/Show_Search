module TvShowsHelper

    def currently_airing?(show)
        binding.pry

        if show.currently_airing?
            "Currently airing"
        else
            "Not currently airing"
        end
    end

end
