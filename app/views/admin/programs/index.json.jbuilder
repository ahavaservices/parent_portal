json.array!(@programs) do |program|
  json.extract! program, :id, :name, :sort_order
  json.url program_url(program, format: :json)
end
