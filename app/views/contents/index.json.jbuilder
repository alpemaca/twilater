json.array!(@contents) do |content|
  json.extract! content, :link, :text
  json.url content_url(content, format: :json)
end
