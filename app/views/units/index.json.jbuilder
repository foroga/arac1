json.array!(@units) do |unit|
  json.extract! unit, :id, :group_id, :name, :email, :telefone, :active, :note, :account_id
  json.url unit_url(unit, format: :json)
end
