json.array!(@contents) do |content|
  json.extract! content, :title, :text
  json.url content_url(content, format: :json)
end
