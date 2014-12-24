json.array!(@orders) do |order|
  json.extract! order, :id, :state, :date, :requested, :received, :priceini, :priceend
  json.url order_url(order, format: :json)
end
