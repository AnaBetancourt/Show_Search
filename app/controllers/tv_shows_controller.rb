class TvShowsController < ApplicationController
    
    def index
        @shows = TvShow.all
    end

    def new
        @show = TvShow.new
    end

    def create
        @show = TvShow.new(show_params)

        if @show.valid?
            @show.save
            redirect_to tv_show_path(@show)
        else
            render :new
        end
    end

    def show
        @show = TvShow.find(params[:id])
    end

    def edit
        @show = TvShow.find(params[:id])
    end

    def update
        binding.pry
    end

    def destroy
    end
    
    private

    def show_params
        params.require(:tv_show).permit(:name, :start_date, :end_date, :currently_airing, :synposis, :network)
    end

    
end
