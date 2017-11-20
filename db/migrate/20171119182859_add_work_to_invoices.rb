class AddWorkToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_reference :invoices, :work, foreign_key: true
  end
end
