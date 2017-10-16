class WelcomeController < ApplicationController
  def index
    @travels = Travel.last(4)
    @show1 = Show.last
    @shows = Show.last(5).first(4)
    @food1 = Food.last
    @foods = Food.last(5).first(4)
    @activity1 = Activity.last
    @activities = Activity.last(5).first(4)
  end

  def about
  end

  def contact
  end
end
