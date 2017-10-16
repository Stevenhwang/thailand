class ShowsController < ApplicationController
  def index
    @shows = Show.page(params[:page]).per(5)
  end

  def show
    @show = Show.find(params[:id])
  end
end
