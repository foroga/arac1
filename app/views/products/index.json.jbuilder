json.array!(@products) do |product|
  json.extract! product, :id, :supplier_id, :name, :imageurl, :active, :note, :minall, :mingroup, :minunit, :kgxunit, :unittype, :price, :priceold
  json.url product_url(product, format: :json)
end
