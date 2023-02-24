json.extract! user, :id, :username, :email, :password, :profile_img, :cover_img, :bio, :created_at, :updated_at
json.url user_url(user, format: :json)
