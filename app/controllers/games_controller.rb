class GamesController < ApplicationController
  def index
    @games = Game.order(:title)
  end

  def show
    @game = Game.find(params[:id])
  end
  
  def search_results
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    @games = Game.where("title LIKE ?", wildcard_keywords)#title: params[:search_keywords])
  end
end
