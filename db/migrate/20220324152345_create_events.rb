class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location, null: false
      t.datetime :start_date_time, null: false
      t.datetime :end_date_time, null: false

      t.timestamps
    end
  end
end
