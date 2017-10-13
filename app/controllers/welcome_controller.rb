class WelcomeController < ApplicationController
  def index
    @travels = Travel.last(4)
    @show1 = Show.last(5).first
    @shows = Show.last(4)
    @food1 = Food.last(5).first
    @foods = Food.last(4)
    @activity1 = Activity.last(5).first
    @activities = Activity.last(4)
  end

  def about
  end

  def contact
  end
end
