class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.date :date
      t.integer :total_amount
      t.integer :received
      t.integer :balance_due

      t.timestamps
    end
  end
end
