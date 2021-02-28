class TvShowsController < ApplicationController
    before_action :set_show, except: [:index, :new, :create]
    
    def index
        if params[:actor_id] && @actor =  Actor.find_by_id(params[:actor_id])
            @shows = @actor.tv_shows.alphabetical
        else
            @shows = TvShow.all
        end
    end

    def new
        @show = TvShow.new
    end

    def create
        @show = TvShow.new(show_params)
        @show.creator = current_user
        @show.editor = current_user

        if @show.save
            flash[:message] = "TV Show was successfully created."
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
        @show.editor = current_user
        if @show.update(show_params)
            flash[:message] = "TV Show was successfully updated."
            redirect_to tv_show_path(@show)
        else
            render :edit
        end
    end

    def destroy
        @show.delete
        redirect_to tv_shows_path
    end
    
    private

    def show_params
        params.require(:tv_show).permit(:name, :start_date, :end_date, :currently_airing, :synopsis, :network)
    end

    def set_show
        @show = TvShow.find(params[:id])
    end

    
end
