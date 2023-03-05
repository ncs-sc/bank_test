json.extract! transaction, :id, :description, :account_id, :amount, :settlement_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
