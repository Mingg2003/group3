json.extract! supplier, :id, :name, :address, :phone, :email, :quantity, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
