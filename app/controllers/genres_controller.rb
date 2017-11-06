class GenresController < ApplicationController
  def index
    @genres = Genre.all.order(:name)
  end

  def show
    @genres = Genre.includes(:games).where(id: params[:id])
  end
end
