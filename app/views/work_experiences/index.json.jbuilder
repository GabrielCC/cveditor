json.array!(@work_experiences) do |work_experience|
  json.extract! work_experience, :from, :to, :ongoing, :position, :employer_name, :description
  json.url work_experience_url(work_experience, format: :json)
end
