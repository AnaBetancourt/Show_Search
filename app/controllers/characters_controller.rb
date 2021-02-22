class CharactersController < ApplicationController

    def index
        @characters = Character.all
    end

    def new
        @character = Character.new
    end

    def create
        @character = Character.new(character_params)

        if @character.valid?
            @character.save
            redirect_to character_path(@character)
        else
            render :new
        end
    end

    def show
        @character = Character.find(params[:id])
    end

    def edit
        @character = Character.find(params[:id])
    end

    def update
        binding.pry
    end

    def destroy
    end
    
    private

    def character_params
        params.require(:character).permit(:name, :bio)
    end
    
end
