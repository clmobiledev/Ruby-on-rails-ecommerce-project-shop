class GamesController < ApplicationController
  def index
    @games = Game.order(:title)
  end

  def show
    @game = Game.find(params[:id])
  end

  def search_results
    wildcard_keywords = '%' + params[:search_keywords] + '%'
    genre_selection = params[:genre_id]

    if genre_selection.size.zero?
      @games = Game.where('title LIKE ?',
                          wildcard_keywords)
    else
      @games = Game.where('title LIKE ? AND genre_id = ?',
                          wildcard_keywords,
                          genre_selection)
    end
  end
end
