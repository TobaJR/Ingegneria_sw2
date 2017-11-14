json.extract! invoice, :id, :total_hours, :total_money, :note, :date, :IDclient, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
