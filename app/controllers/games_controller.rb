class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.create(permitted_params)
    redirect_to game_path(@game) and return if @game.persisted?
     
    flash[:error] = "Game could not be created"
    render("games/new")
  end

  def show
    @game = Game.find_by(id: params[:id])
    redirect_to new_game_path if @game.blank?
  end

  private
  
  def permitted_params
    params.require(:game).permit(%i[name])
  end
end
