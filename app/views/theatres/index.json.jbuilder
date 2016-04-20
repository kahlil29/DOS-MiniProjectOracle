json.array!(@theatres) do |theatre|
  json.extract! theatre, :id, :title, :description
  json.url theatre_url(theatre, format: :json)
end
