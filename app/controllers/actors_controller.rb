class ActorsController < ApplicationController
    before_action :set_actor, except: [:index, :new, :create]

    def index
        @actors = Actor.all
    end

    def new
        @actor = Actor.new
    end

    def create
        @actor = Actor.new(actor_params)

        if @actor.save
            # flash[:success] = "Actor was successfully created."
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
        if @actor.update(actor_params)
            flash[:notice] = "Actor successfully updated"
            redirect_to actor_path(@actor)
        else
            render :edit
        end
    end

    def destroy
        actor.delete
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
