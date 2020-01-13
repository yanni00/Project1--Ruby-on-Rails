class CharactersController < ApplicationController

  def new
  end

  def create
    # character = Character.find_by name: params[:name]

    redirect_to character_path(character.id)

  end

  def show
  end

  def update
  end

  def destroy
  end
  private
  # def user_params
  #
  #   params.require(:user).permit( :name, :server, :subclass, :password_confirmation )
  #
  # end

end
