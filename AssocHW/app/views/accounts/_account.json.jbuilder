json.extract! account, :id, :accountnumber, :status, :rank, :created_at, :updated_at
json.url account_url(account, format: :json)
