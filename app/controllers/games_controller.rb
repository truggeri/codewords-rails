class GamesController < ApplicationController
  def new
    @game = Game.new
    @game.player.build(team: Player.random_team)
  end

  def create
    @game = Game.create(game_params)
    redirect_to game_path(@game) and return if @game.persisted?
     
    flash[:error] = I18n.t("game.create.failed")
    render("games/new")
  end

  def show
    @game   = Game.find_by(id: params[:id])
    redirect_to new_game_path and return if @game.blank?

    # TODO - use session to establish if this is an existing player
    @player = @game.player.build
  end

  private
  
  def game_params
    params.require(:game).permit(:name, player_attributes: [:name])
  end
end
