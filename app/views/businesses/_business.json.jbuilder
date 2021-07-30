json.extract! business, :id, :businessName, :description, :location, :owner_id, :created_at, :updated_at
json.url business_url(business, format: :json)
