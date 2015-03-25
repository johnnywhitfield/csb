json.array!(@reviews) do |review|
  json.extract! review, :id, :company_id, :user_id, :words, :overall
  json.url review_url(review, format: :json)
end
