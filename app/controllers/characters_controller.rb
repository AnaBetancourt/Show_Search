class CharactersController < ApplicationController
    before_action :set_character, except: [:new, :create]

    def new
        @character = Character.new
    end

    def create
        @character = Character.new(character_params)

        if @character.save
            flash[:message] = "Character was successfully created."
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
        if @character.update(character_params)
            flash[:message] = "Character was successfully updated."
            redirect_to character_path(@character)
        else
            render :edit
        end
    end

    def destroy
        @character.delete
        redirect_to characters_path
    end
    
    private

    def character_params
        params.require(:character).permit(:name, :bio)
    end

    def set_character
        @character = Character.find(params[:id])
    end
    
end
