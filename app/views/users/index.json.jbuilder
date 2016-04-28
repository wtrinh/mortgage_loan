json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :password_hash, :password_salt, :email
  json.url user_url(user, format: :json)
end
