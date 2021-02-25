class CharactersController < ApplicationController
    before_action :set_character, except: [:index, :new, :create]

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
    end

    def edit
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

    def set_character
        @character = Character.find(params[:id])
    end
    
end
