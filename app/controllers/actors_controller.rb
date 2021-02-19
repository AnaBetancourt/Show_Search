class ActorsController < ApplicationController

    def index
    end

    def new
        @actor = Actor.new
    end

    def create
        @actor = Actor.new(actor_params)

        if @actor.valid?
            @actor.save
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
    end

    def destroy
    end
    
    private

    def actor_params
        params.require(:actor).permit(:name, :age)
    end

end
