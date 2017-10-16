class ActivitiesController < ApplicationController
  def index
    @activities = Activity.page(params[:page]).per(5)
  end

  def show
    @activity = Activity.find(params[:id])
  end
end
