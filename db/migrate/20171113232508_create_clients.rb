class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.decimal :age
      t.decimal :hours
      t.string :email

      t.timestamps
    end
  end
end
