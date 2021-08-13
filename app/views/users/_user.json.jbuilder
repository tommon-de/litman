json.extract! user, :id, :email, :password, :name, :address, :note, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
