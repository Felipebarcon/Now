class GoalsController < ApplicationController
  def new
    @activities = Activity.all
    @goal = Goal.new
  end
end
