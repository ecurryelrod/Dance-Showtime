class AddStartDateEndDateTimeToPerformances < ActiveRecord::Migration[7.0]
  def change
    add_column :performances, :start_date, :date
    add_column :performances, :end_date, :date
    add_column :performances, :time, :time
  end
end
