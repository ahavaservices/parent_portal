json.array!(@levels) do |level|
  json.extract! level, :id, :name, :sort_order
  json.url level_url(level, format: :json)
end
