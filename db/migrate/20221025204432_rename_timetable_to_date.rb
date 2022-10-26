class RenameTimetableToDate < ActiveRecord::Migration[7.0]
  def change
    rename_column :sessions, :timetable, :date 
  end
end
