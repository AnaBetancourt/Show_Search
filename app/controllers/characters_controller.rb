class CharactersController < ApplicationController
    before_action :set_character, except: [:new, :create]

    def new
        @character = Character.new
        @character.build_actor
        @character.build_tv_show
    end

    def create
        @character = Character.new(character_params)
        @character.creator = current_user
        @character.editor = current_user

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
        @character.build_actor
        @character.build_tv_show
    end

    def update
        if @character.update(character_params)
            @character.editor = current_user
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
        params.require(:character).permit(:name, :bio, actor_attributes: [:current, :name, :age], tv_show_attributes: [:current, :name, :synopsis, :start_date, :currently_airing, :end_date, :network])
    end

    def set_character
        @character = Character.find(params[:id])
    end
    
end
