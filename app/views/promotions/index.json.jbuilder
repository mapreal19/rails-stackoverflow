json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :name, :start_period, :end_period
  json.url promotion_url(promotion, format: :json)
end
