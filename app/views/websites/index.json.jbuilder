json.array!(@websites) do |website|
  json.extract! website, :link
  json.url website_url(website, format: :json)
end
