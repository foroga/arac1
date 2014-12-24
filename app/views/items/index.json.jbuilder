json.array!(@items) do |item|
  json.extract! item, :id, :order_id, :product_id, :supplier_id, :name, :note, :minall, :mingroup, :minunit, :kgxunit, :unittype, :price
  json.url item_url(item, format: :json)
end
