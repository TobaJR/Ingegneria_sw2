class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.integer :hours
      t.string :email
      t.timestamps
    end
  end
end
