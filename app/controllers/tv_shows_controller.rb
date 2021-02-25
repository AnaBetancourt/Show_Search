class TvShowsController < ApplicationController
    before_action :set_show, except: [:index, :new, :create]
    
    def index
        @shows = TvShow.all
    end

    def new
        @show = TvShow.new
    end

    def create
        @show = TvShow.new(show_params)
        
        if @show.valid?
            @show.user = current_user
            @show.save
            redirect_to tv_show_path(@show)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @show.update(show_params)
            flash[:notice] = "TV Show successfully updated."
            redirect_to show_path(@show)
        else
            render :edit
        end
    end

    def destroy
    end
    
    private

    def show_params
        params.require(:tv_show).permit(:name, :start_date, :end_date, :currently_airing, :synopsis, :network)
    end

    def set_show
        @show = TvShow.find(params[:id])
    end

    
end
