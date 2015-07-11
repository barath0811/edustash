json.array!(@links) do |link|
  json.extract! link, :id, :title, :url, :up_votes, :down_votes, :reported_spam_count, :is_valid, :topic_id
  json.url link_url(link, format: :json)
end
