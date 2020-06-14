class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def show
    @game = Game.find_by(id: params[:id])

    return head :no_content if @game.blank?
  end
end
