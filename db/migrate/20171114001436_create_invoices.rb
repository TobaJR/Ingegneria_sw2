class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :total_hours
      t.integer :total_money
      t.string :note
      t.date :date
      t.string :IDclient

      t.timestamps
    end
  end
end
