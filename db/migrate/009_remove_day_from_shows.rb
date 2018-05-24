class RemoveDayFromShows < ActiveRecord::Migration[5.1]
  def change
    remove_column :shows, :day
  end
end
