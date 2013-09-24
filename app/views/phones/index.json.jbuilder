json.array!(@phones) do |phone|
  json.extract! phone, :type, :number
  json.url phone_url(phone, format: :json)
end
