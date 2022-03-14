class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activities_params)
    @activity.save
  end

  private

  def activities_params
    params.require(:activity).permit(:name)
  end
end
