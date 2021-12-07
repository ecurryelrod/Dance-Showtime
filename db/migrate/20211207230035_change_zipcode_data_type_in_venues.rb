class ChangeZipcodeDataTypeInVenues < ActiveRecord::Migration[7.0]
  def change
    change_column :venues, :zipcode, :integer
  end
end
