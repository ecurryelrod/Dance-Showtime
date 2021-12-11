class RemoveDateTimeFromPerformances < ActiveRecord::Migration[6.1]
  def change
    remove_column :performances, :date_time, :datetime
  end
end
