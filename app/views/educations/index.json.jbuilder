json.array!(@educations) do |education|
  json.extract! education, :from, :to, :ongoing, :title, :organization_name, :level, :description
  json.url education_url(education, format: :json)
end
