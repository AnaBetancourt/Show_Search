class ActorsController < ApplicationController
    before_action :set_actor, except: [:index, :new, :create]
    before_action :creator_match, only: [:destroy]

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
        @actor = current_user.created_actors.build(actor_params)
        @actor.editor = current_user

        if @actor.save
            creation_success("Actor")
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
            update_success("Actor")
            redirect_to actor_path(@actor)
        else
            render :edit
        end
    end

    def destroy
            @actor.destroy
            deletion_success("Actor")
            redirect_to actors_path
    end
    
    private

    def actor_params
        params.require(:actor).permit(:name, :age)
    end

    def set_actor
        @actor = Actor.find(params[:id])
    end   
    
    def creator_match
        if @actor.creator != current_user
            redirect_to actor_path(@actor)
        end
    end

end
