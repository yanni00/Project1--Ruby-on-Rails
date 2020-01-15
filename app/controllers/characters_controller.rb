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

    @character = Character.create name: params[:character][:name], server: params[:character][:server], spec: params[:character][:spec], subspec: params[:character][:subspec], image: params[:character][:image], user: @current_user

    # redirect_to character_path(character.id)
    redirect_to user_path(@current_user.id)

  end

  def edit
    @pet = Pet.find params[:id]
  end


  def update
    pet = Pet.find params[:id]
  end

  def destroy
  end

  private
    def character_params
      params.require(:character).permit(:name)
    end

end
