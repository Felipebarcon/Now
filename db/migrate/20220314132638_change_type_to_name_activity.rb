class ChangeTypeToNameActivity < ActiveRecord::Migration[6.1]
  def change
    rename_column :activities, :type, :name
  end
end
