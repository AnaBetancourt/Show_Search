class ActorsController < ApplicationController
    before_action :set_actor, except: [:index, :new, :create]

    def index
        if params[:tv_show_id] && @show =  TvShow.find_by_id(params[:tv_show_id])
            @actors = @show.actors.alphabetical
        else
            @actors = Actor.all
        end
    end

    def new
        @actor = Actor.new
    end

    def create
        @actor = Actor.new(actor_params)
        @actor.creator = current_user
        @actor.editor = current_user

        if @actor.save
            flash[:message] = "Actor was successfully created."
            redirect_to actor_path(@actor)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        @actor.editor = current_user
        if @actor.update(actor_params)
            flash[:message] = "Actor was successfully updated."
            redirect_to actor_path(@actor)
        else
            render :edit
        end
    end

    def destroy
        @actor.delete
        redirect_to actors_path
    end
    
    private

    def actor_params
        params.require(:actor).permit(:name, :age)
    end

    def set_actor
        @actor = Actor.find(params[:id])
    end

end
