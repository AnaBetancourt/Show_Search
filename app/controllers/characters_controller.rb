class CharactersController < ApplicationController
    before_action :set_character, except: [:index, :new, :create]
    before_action :creator_match, only: [:destroy]

    def index
        if params[:tv_show_id] && @show =  TvShow.find_by_id(params[:tv_show_id])
            @characters = @show.characters.alphabetical
        else
            @characters = Character.all
        end
    end

    def new
        if params[:tv_show_id] && @show =  TvShow.find_by_id(params[:tv_show_id])
            @character = @show.characters.build
            @character.build_actor
        else
            @character = Character.new
            @character.build_actor
            @character.build_tv_show
        end
    end

    def create
        @character = current_user.created_characters.build(character_params)
        @character.editor = current_user

        if @character.save
            creation_success("Character")
            redirect_to character_path(@character)
        else
            @show =  TvShow.find_by_id(params[:tv_show_id]) if params[:tv_show_id]
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
        @character.editor = current_user

        if @character.update(character_params)
            update_success("Character")
            redirect_to character_path(@character)
        else
            render :edit
        end
    end

    def destroy
            @character.destroy
            deletion_success("Character")
            redirect_to user_path(current_user)
    end
    
    private

    def character_params
        params.require(:character).permit(:name, :bio, :actor_id, :tv_show_id, actor_attributes: [:creator_id, :name, :age], tv_show_attributes: [:creator_id, :name, :synopsis, :start_date, :currently_airing, :end_date, :network])
    end

    def set_character
        @character = Character.find(params[:id])
    end

    def creator_match
        if @character.creator != current_user
            redirect_to actor_path(@actor)
        end
    end
    
end
