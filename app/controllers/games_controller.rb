class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def show
    @game = Game.find_by(id: params[:id])

    redirect_to new_game_path if @game.blank?
  end
end
