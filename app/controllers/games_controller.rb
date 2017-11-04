class GamesController < ApplicationController
  def index
    @games = Game.order(:name)
  end

  def show
  end
end
