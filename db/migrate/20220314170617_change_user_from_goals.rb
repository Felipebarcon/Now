class ChangeUserFromGoals < ActiveRecord::Migration[6.1]
  def change
    remove_reference :goals, :user, null: false
    add_reference :goals, :user, foreign_key: true, null: true
  end
end
