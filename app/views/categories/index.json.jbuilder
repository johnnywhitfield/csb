json.array!(@categories) do |category|
  json.extract! category, :id, :review_id, :company_id, :name, :description
  json.url category_url(category, format: :json)
end
