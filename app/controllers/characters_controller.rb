class CharactersController < ApplicationController
  def index
    @characters = Character.where :user => @current_user
  end

  def show
    @character = Character.find params[:id]
  end

  def new
    @character = Character.new
  end

  def create

    character = Character.new character_params

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      character.image = req["public_id"]
    end

    character.user_id = @current_user.id

    character.save
    redirect_to user_path(@current_user.id)

  end

  def edit
    @character = Character.find params[:id]
  end


  def update
    character = Character.find params[:id]
    character.update character_params
    character.user_id = @current_user.id

    character.save

    redirect_to characters_path(character.id)
  end

  def destroy
  end

  private
    def character_params
      params.require(:character).permit( :name, :server, :spec, :subspec, :image, :user)
    end
end
