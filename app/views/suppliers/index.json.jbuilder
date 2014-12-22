json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :email, :telephone, :url, :active, :note, :frecuency, :ranking, :account_id, :group_id, :watcher_unit_id
  json.url supplier_url(supplier, format: :json)
end
