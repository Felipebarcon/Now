class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new(registration_params)
    # @registration.user = current_user

    if @registration.save
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:user_id, :event_id)
  end
end
