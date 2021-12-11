class AddCompanyNameToPerformances < ActiveRecord::Migration[6.1]
  def change
    add_column :performances, :company_name, :string
  end
end
