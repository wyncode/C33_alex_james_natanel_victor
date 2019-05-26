json.extract! user, :id, :first_name, :last_name, :email, :phone, :password, :address, :city, :state, :zip_code, :created_at, :updated_at
json.url user_url(user, format: :json)
