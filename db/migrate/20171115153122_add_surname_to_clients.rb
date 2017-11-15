class AddSurnameToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :surname, :string
  end
end
