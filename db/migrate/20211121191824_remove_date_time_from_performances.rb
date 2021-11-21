class RemoveDateTimeFromPerformances < ActiveRecord::Migration[7.0]
  def change
    remove_column :performances, :date_time, :datetime
  end
end
