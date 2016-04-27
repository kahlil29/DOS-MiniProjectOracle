json.array!(@movietables) do |movietable|
  json.extract! movietable, :id, :id, :name, :year, :actor1, :actor2, :actor3
  json.url movietable_url(movietable, format: :json)
end
