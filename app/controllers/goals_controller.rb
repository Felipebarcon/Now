require "json"
require "open-uri"

class GoalsController < ApplicationController
  def new
    @activities = Activity.all
    @goal = Goal.new
    @levels = Level.all
    @yoda_phrase_1 = "Welcome ! So you need help to reach your goals ? You're in the right place ! First, choose a goal"
    @yoda_phrase_2 = "Great ! Now, select the days of the week you're available !"
    @yoda_phrase_3 = "Awesome ! Last step, you now have to select if you're motivated, very motivated, or SUPER motivated"
    @yoda_id_1 = "yoda-1"
    @yoda_id_2 = "yoda-2"
    @yoda_id_3 = "yoda-3"
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
    @user = current_user
    @goals = @user.goals
    url = "https://kaamelott.chaudie.re/api/random"
    citation_serialized = URI.open(url).read
    citation = JSON.parse(citation_serialized)
    @citation = "#{citation["citation"]["citation"]}"
    @author = "#{"Une citation de: "}#{citation["citation"]["infos"]["personnage"]} - #{"Kaamelott"}"
  end

  private

  def goal_params
    params.require(:goal).permit(:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :activity_id, :level_id)
  end
end
