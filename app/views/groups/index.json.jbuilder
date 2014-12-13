json.array!(@groups) do |group|
  json.extract! group, :id, :name, :email, :telefone, :active, :dealtype, :note, :address, :error_unit_id, :acounting_unit_id, :bill_unit_id, :sw_unit_id, :acount_id
  json.url group_url(group, format: :json)
end
