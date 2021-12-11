class CreatePerformances < ActiveRecord::Migration[6.1]
  def change
    create_table :performances do |t|
      t.string :title
      t.datetime :date_time
      t.integer :ticket_price
      t.string :ticket_url
      t.text :description
      t.string :company_url
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
