class AddMoneyToWorks < ActiveRecord::Migration[5.1]
  def change
    add_column :works, :money, :float
  end
end
