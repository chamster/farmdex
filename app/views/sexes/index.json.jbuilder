json.array!(@sexes) do |sex|
  json.extract! sex, :sex
  json.url sex_url(sex, format: :json)
end
