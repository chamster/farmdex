json.array!(@origins) do |origin|
  json.extract! origin, :origin, :flock_name, :sort_order
  json.url origin_url(origin, format: :json)
end
