class ChangeHours < ActiveRecord::Migration[5.1]
  def change
    rename_column :clients, :hours, :tarif
  end
end
