class GoalsController < ApplicationController
  def new
    @activities = Activity.all
    @goal = Goal.new
    @levels = Level.all
    @yoda_phrase_1 = "Test"
  end

  def create
    @goal = Goal.new(goal_params)
    @activity = Activity.find(params[:activity_id])
    @level = Level.find(params[:level_id])

    @goal.activity = @activity
    @goal.level = @level

    if @goal.save
      redirect_to summary_path
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
    redirect_to root_path
  end

  private

  def goal_params
    params.require(:goal).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
  end
end
