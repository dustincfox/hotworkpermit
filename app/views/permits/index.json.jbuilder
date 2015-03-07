json.array!(@permits) do |permit|
  json.extract! permit, :id
  json.url permit_url(permit, format: :json)
end
