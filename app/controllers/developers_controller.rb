class DevelopersController < ApplicationController
  def index
    @developers = Developer.all
  end

  def show
    @developers = Developer.includes(:games).where(:id => params[:id])
  end
end
