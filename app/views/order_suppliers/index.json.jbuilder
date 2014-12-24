json.array!(@order_suppliers) do |order_supplier|
  json.extract! order_supplier, :id, :order_id, :supplier_id, :group_id, :position
  json.url order_supplier_url(order_supplier, format: :json)
end
