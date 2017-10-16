class PartiesController < ApplicationController
  def index
    @parties = Party.page(params[:page]).per(5)
  end

  def show
    @party = Party.find(params[:id])
  end
end
