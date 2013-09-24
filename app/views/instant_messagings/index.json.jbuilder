json.array!(@instant_messagings) do |instant_messaging|
  json.extract! instant_messaging, :type, :address
  json.url instant_messaging_url(instant_messaging, format: :json)
end
