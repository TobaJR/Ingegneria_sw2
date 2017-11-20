class AddBilledToWork < ActiveRecord::Migration[5.1]
  def change
    add_column :works, :billed, :boolean
  end
end
