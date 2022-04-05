class ChangeRegistrationsToParticipations < ActiveRecord::Migration[6.1]
  def change
    rename_table :registrations, :participations
  end
end
