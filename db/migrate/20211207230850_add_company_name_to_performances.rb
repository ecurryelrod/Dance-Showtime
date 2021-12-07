class AddCompanyNameToPerformances < ActiveRecord::Migration[7.0]
  def change
    add_column :performances, :company_name, :string
  end
end
