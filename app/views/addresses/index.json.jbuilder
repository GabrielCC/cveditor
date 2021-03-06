json.array!(@addresses) do |address|
  json.extract! address, :street, :postal_code, :country
  json.url address_url(address, format: :json)
end
