json.extract! client, :id, :name, :surname, :age, :hours, :email, :created_at, :updated_at
json.url client_url(client, format: :json)
