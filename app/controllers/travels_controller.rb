class TravelsController < ApplicationController
  def index
    @travels = Travel.page(params[:page]).per(5)
  end

  def show
    @travel = Travel.find(params[:id])
  end
end
