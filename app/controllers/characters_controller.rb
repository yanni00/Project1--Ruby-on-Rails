class CharactersController < ApplicationController

  def new
    @character = Character.new
  end

  def create
    # character = Character.find_by name: params[:name]
    # raise 'hell'
    # Create the new character using the params passed through from
    # the form
    @character = Character.create name: params[:character][:name], server: params[:character][:server], spec: params[:character][:spec], subspec: params[:character][:subspec], user: @current_user

    # redirect_to character_path(character.id)

    redirect_to user_path(@current_user.id)


  end

  def index
    @character = Character.where :user => @current_user
  end



  def show
  end

  def update
  end

  def destroy
  end


end
