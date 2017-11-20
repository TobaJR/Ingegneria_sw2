class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.references :client
      t.string :note
      t.integer :hours

      t.timestamps
    end
  end
end
