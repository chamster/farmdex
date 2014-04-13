json.array!(@statuses) do |status|
  json.extract! status, :status, :sort_order
  json.url status_url(status, format: :json)
end
