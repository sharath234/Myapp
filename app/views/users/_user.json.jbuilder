json.extract! user, :id, :user_name, :role, :designation, :address, :street, :city, :pincode, :created_at, :updated_at
json.url user_url(user, format: :json)
