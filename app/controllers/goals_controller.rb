class GoalsController < ApplicationController
  def new
    @activities = Activity.all
    @goal = Goal.new
    @levels = Level.all
  end

  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      redirect_to summary_path(@goal)
    else
      render "new"
    end
  end

  def summary
    @goal = Goal.find(params[:id])
  end

   def update
    @goal = Goal.find(params[:id])
    @goal.user = current_user
    @goal.save

    @goal.update(goal_params)
    redirect_to dashboard_path
  end

  def dashboard

  end

  private

  def goal_params
    params.require(:goal).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :activity_id, :level_id)
  end
end
