json.extract! review, :id, :rating, :comments, :user_id, :profile_id, :created_at, :updated_at
json.url review_url(review, format: :json)