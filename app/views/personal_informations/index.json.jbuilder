json.array!(@personal_informations) do |personal_information|
  json.extract! personal_information, :user_id, :first_name, :last_name, :email, :sex, :date_of_birth, :nationality
  json.url personal_information_url(personal_information, format: :json)
end
