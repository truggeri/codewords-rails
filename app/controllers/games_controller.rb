class GamesController < ApplicationController
  def new
    @game = Game.new
    @game.player.build(team: Player.random_team)
  end

  def create
    @game = Game.create(game_params)
    redirect_to game_path(@game) and return if @game.persisted?
     
    flash[:error] = "Game could not be created"
    render("games/new")
  end

  def show
    @game = Game.find_by(id: params[:id])
    redirect_to new_game_path if @game.blank?
  end

  private
  
  def game_params
    params.require(:game).permit(:name, player_attributes: [:name])
  end
end
