class ChangeZipcodeDataTypeInVenues < ActiveRecord::Migration[6.1]
  def change
    change_column :venues, :zipcode, :integer
  end
end
