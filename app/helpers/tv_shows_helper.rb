module TvShowsHelper

    def currently_airing?(show)

        if show.currently_airing
            "Currently airing"
        else
            "Not currently airing"
        end
    end

    def sdate_readable
        self.start_date.strftime("%B %d, %Y")
    end

    def edate_readable
        self.end_date.strftime("%B %d, %Y")
    end

end
