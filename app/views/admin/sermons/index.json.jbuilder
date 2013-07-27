json.array!(@sermons) do |sermon|
  json.extract! sermon, :title, :body, :date, :summary
  json.url sermon_url(sermon, format: :json)
end
