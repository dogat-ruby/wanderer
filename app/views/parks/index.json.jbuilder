json.array!(@parks) do |park|
  json.extract! park, :id, :type, :location, :category
  json.url park_url(park, format: :json)
end
