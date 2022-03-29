class AddActivityReferenceToEvents < ActiveRecord::Migration[6.1]
  def change
     add_reference :events, :activity, null: false, foreign_key: true
  end
end
