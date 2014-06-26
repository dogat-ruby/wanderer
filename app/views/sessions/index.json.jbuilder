json.array!(@sessions) do |session|
  json.extract! session, :id, :name, :pasword
  json.url session_url(session, format: :json)
end
