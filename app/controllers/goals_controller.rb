class GoalsController < ApplicationController
  def new
    @activities = Activity.all
    @levels = Level.all
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    @activity = Activity.find(params[:activity_id])
    @level = Level.find(params[:level_id])

    @goal.activity = @activity
    @goal.level = @level

    if @goal.save
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
  end
end
